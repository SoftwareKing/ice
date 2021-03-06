// **********************************************************************
//
// Copyright (c) 2003-2015 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

#include <TestI.h>
#include <Ice/Ice.h>

using namespace std;

namespace
{

//
// A no-op Logger, used when testing the Logger Admin
//

class NullLogger : public Ice::Logger, public ICE_ENABLE_SHARED_FROM_THIS(NullLogger)
{
public:

    virtual void print(const string&)
    {
    }

    virtual void trace(const string&, const string&)
    {
    }

    virtual void warning(const string&)
    {
    }

    virtual void error(const string&)
    {
    }

    virtual string getPrefix()
    {
        return "NullLogger";
    }
    
    virtual Ice::LoggerPtr cloneWithPrefix(const string&)
    {
        return ICE_SHARED_FROM_THIS;
    }
};

}



RemoteCommunicatorI::RemoteCommunicatorI(const Ice::CommunicatorPtr& communicator) :
    _communicator(communicator), _called(false)
{
}

Ice::ObjectPrxPtr
RemoteCommunicatorI::getAdmin(const Ice::Current&)
{
    return _communicator->getAdmin();
}

Ice::PropertyDict
RemoteCommunicatorI::getChanges(const Ice::Current&)
{
    IceUtil::Monitor<IceUtil::Mutex>::Lock sync(*this);

    //
    // The client calls PropertiesAdmin::setProperties() and then invokes
    // this operation. Since setProperties() is implemented using AMD, the
    // client might receive its reply and then call getChanges() before our
    // updated() method is called. We block here to ensure that updated()
    // gets called before we return the most recent set of changes.
    //
    while(!_called)
    {
        wait();
    }

    _called = false;

    return _changes;
}

void
RemoteCommunicatorI::print(ICE_IN(std::string) message, const Ice::Current&)
{
    _communicator->getLogger()->print(message);
}
void
RemoteCommunicatorI::trace(ICE_IN(std::string) category,
                           ICE_IN(std::string) message, const Ice::Current&)
{
    _communicator->getLogger()->trace(category, message);
}
void
RemoteCommunicatorI::warning(ICE_IN(std::string) message, const Ice::Current&)
{
    _communicator->getLogger()->warning(message);
}
void
RemoteCommunicatorI::error(ICE_IN(std::string) message, const Ice::Current&)
{
    _communicator->getLogger()->error(message);
}

void
RemoteCommunicatorI::shutdown(const Ice::Current&)
{
    _communicator->shutdown();
}

void
RemoteCommunicatorI::waitForShutdown(const Ice::Current&)
{
    //
    // Note that we are executing in a thread of the *main* communicator,
    // not the one that is being shut down.
    //
    _communicator->waitForShutdown();
}

void
RemoteCommunicatorI::destroy(const Ice::Current&)
{
    _communicator->destroy();
}

void
RemoteCommunicatorI::updated(const Ice::PropertyDict& changes)
{
    IceUtil::Monitor<IceUtil::Mutex>::Lock sync(*this);

    _changes = changes;
    _called = true;
    notify();
}

Test::RemoteCommunicatorPrxPtr
RemoteCommunicatorFactoryI::createCommunicator(ICE_IN(Ice::PropertyDict) props, const Ice::Current& current)
{
    //
    // Prepare the property set using the given properties.
    //
    Ice::InitializationData init;
    init.properties = Ice::createProperties();
    for(Ice::PropertyDict::const_iterator p = props.begin(); p != props.end(); ++p)
    {
        init.properties->setProperty(p->first, p->second);
    }

    if(init.properties->getPropertyAsInt("NullLogger") > 0)
    {
        init.logger = ICE_MAKE_SHARED(NullLogger);
    }

    //
    // Initialize a new communicator.
    //
    Ice::CommunicatorPtr communicator = Ice::initialize(init);

    //
    // Install a custom admin facet.
    //
    communicator->addAdminFacet(ICE_MAKE_SHARED(TestFacetI), "TestFacet");

    //
    // The RemoteCommunicator servant also implements PropertiesAdminUpdateCallback.
    // Set the callback on the admin facet.
    //
    RemoteCommunicatorIPtr servant = ICE_MAKE_SHARED(RemoteCommunicatorI, communicator);
    Ice::ObjectPtr propFacet = communicator->findAdminFacet("Properties");
    if(propFacet)
    {
        Ice::NativePropertiesAdminPtr admin = ICE_DYNAMIC_CAST(Ice::NativePropertiesAdmin, propFacet);
        assert(admin);
        admin->addUpdateCallback(servant);
    }

    Ice::ObjectPrxPtr proxy = current.adapter->addWithUUID(servant);
    return ICE_UNCHECKED_CAST(Test::RemoteCommunicatorPrx, proxy);
}

void
RemoteCommunicatorFactoryI::shutdown(const Ice::Current& current)
{
    current.adapter->getCommunicator()->shutdown();
}
