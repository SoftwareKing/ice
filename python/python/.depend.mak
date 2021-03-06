
Ice_BuiltinSequences_ice.py: \
    "$(slicedir)\Ice\BuiltinSequences.ice"

Ice_Communicator_ice.py: \
    "$(slicedir)\Ice\Communicator.ice" \
    "$(slicedir)/Ice/LoggerF.ice" \
    "$(slicedir)/Ice/InstrumentationF.ice" \
    "$(slicedir)/Ice/ObjectAdapterF.ice" \
    "$(slicedir)/Ice/ObjectFactoryF.ice" \
    "$(slicedir)/Ice/RouterF.ice" \
    "$(slicedir)/Ice/LocatorF.ice" \
    "$(slicedir)/Ice/PluginF.ice" \
    "$(slicedir)/Ice/ImplicitContextF.ice" \
    "$(slicedir)/Ice/Current.ice" \
    "$(slicedir)/Ice/ConnectionF.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Version.ice" \
    "$(slicedir)/Ice/Properties.ice" \
    "$(slicedir)/Ice/PropertiesAdmin.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/FacetMap.ice"

Ice_CommunicatorF_ice.py: \
    "$(slicedir)\Ice\CommunicatorF.ice"

Ice_Connection_ice.py: \
    "$(slicedir)\Ice\Connection.ice" \
    "$(slicedir)/Ice/ObjectAdapterF.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Endpoint.ice" \
    "$(slicedir)/Ice/Version.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/EndpointF.ice"

Ice_ConnectionF_ice.py: \
    "$(slicedir)\Ice\ConnectionF.ice"

Ice_Current_ice.py: \
    "$(slicedir)\Ice\Current.ice" \
    "$(slicedir)/Ice/ObjectAdapterF.ice" \
    "$(slicedir)/Ice/ConnectionF.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Version.ice"

Ice_Endpoint_ice.py: \
    "$(slicedir)\Ice\Endpoint.ice" \
    "$(slicedir)/Ice/Version.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/EndpointF.ice"

Ice_EndpointF_ice.py: \
    "$(slicedir)\Ice\EndpointF.ice"

Ice_EndpointTypes_ice.py: \
    "$(slicedir)\Ice\EndpointTypes.ice"

Ice_FacetMap_ice.py: \
    "$(slicedir)\Ice\FacetMap.ice"

Ice_Identity_ice.py: \
    "$(slicedir)\Ice\Identity.ice"

Ice_ImplicitContext_ice.py: \
    "$(slicedir)\Ice\ImplicitContext.ice" \
    "$(slicedir)/Ice/LocalException.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Version.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/Current.ice" \
    "$(slicedir)/Ice/ObjectAdapterF.ice" \
    "$(slicedir)/Ice/ConnectionF.ice"

Ice_ImplicitContextF_ice.py: \
    "$(slicedir)\Ice\ImplicitContextF.ice"

Ice_Instrumentation_ice.py: \
    "$(slicedir)\Ice\Instrumentation.ice" \
    "$(slicedir)/Ice/EndpointF.ice" \
    "$(slicedir)/Ice/ConnectionF.ice" \
    "$(slicedir)/Ice/Current.ice" \
    "$(slicedir)/Ice/ObjectAdapterF.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Version.ice"

Ice_InstrumentationF_ice.py: \
    "$(slicedir)\Ice\InstrumentationF.ice"

Ice_LocalException_ice.py: \
    "$(slicedir)\Ice\LocalException.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Version.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Ice_Locator_ice.py: \
    "$(slicedir)\Ice\Locator.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/ProcessF.ice"

Ice_LocatorF_ice.py: \
    "$(slicedir)\Ice\LocatorF.ice"

Ice_Logger_ice.py: \
    "$(slicedir)\Ice\Logger.ice"

Ice_LoggerF_ice.py: \
    "$(slicedir)\Ice\LoggerF.ice"

Ice_Metrics_ice.py: \
    "$(slicedir)\Ice\Metrics.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Ice_ObjectAdapter_ice.py: \
    "$(slicedir)\Ice\ObjectAdapter.ice" \
    "$(slicedir)/Ice/CommunicatorF.ice" \
    "$(slicedir)/Ice/ServantLocatorF.ice" \
    "$(slicedir)/Ice/LocatorF.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/FacetMap.ice" \
    "$(slicedir)/Ice/Endpoint.ice" \
    "$(slicedir)/Ice/Version.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/EndpointF.ice"

Ice_ObjectAdapterF_ice.py: \
    "$(slicedir)\Ice\ObjectAdapterF.ice"

Ice_ObjectFactory_ice.py: \
    "$(slicedir)\Ice\ObjectFactory.ice"

Ice_ObjectFactoryF_ice.py: \
    "$(slicedir)\Ice\ObjectFactoryF.ice"

Ice_Plugin_ice.py: \
    "$(slicedir)\Ice\Plugin.ice" \
    "$(slicedir)/Ice/LoggerF.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Ice_PluginF_ice.py: \
    "$(slicedir)\Ice\PluginF.ice"

Ice_Process_ice.py: \
    "$(slicedir)\Ice\Process.ice"

Ice_ProcessF_ice.py: \
    "$(slicedir)\Ice\ProcessF.ice"

Ice_Properties_ice.py: \
    "$(slicedir)\Ice\Properties.ice" \
    "$(slicedir)/Ice/PropertiesAdmin.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Ice_PropertiesAdmin_ice.py: \
    "$(slicedir)\Ice\PropertiesAdmin.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Ice_PropertiesF_ice.py: \
    "$(slicedir)\Ice\PropertiesF.ice"

Ice_Router_ice.py: \
    "$(slicedir)\Ice\Router.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Ice_RouterF_ice.py: \
    "$(slicedir)\Ice\RouterF.ice"

Ice_ServantLocator_ice.py: \
    "$(slicedir)\Ice\ServantLocator.ice" \
    "$(slicedir)/Ice/ObjectAdapterF.ice" \
    "$(slicedir)/Ice/Current.ice" \
    "$(slicedir)/Ice/ConnectionF.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/Version.ice"

Ice_ServantLocatorF_ice.py: \
    "$(slicedir)\Ice\ServantLocatorF.ice"

Ice_SliceChecksumDict_ice.py: \
    "$(slicedir)\Ice\SliceChecksumDict.ice"

Ice_Version_ice.py: \
    "$(slicedir)\Ice\Version.ice"

Glacier2_Metrics_ice.py: \
    "$(slicedir)\Glacier2\Metrics.ice" \
    "$(slicedir)/Ice/Metrics.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Glacier2_PermissionsVerifier_ice.py: \
    "$(slicedir)\Glacier2\PermissionsVerifier.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

Glacier2_PermissionsVerifierF_ice.py: \
    "$(slicedir)\Glacier2\PermissionsVerifierF.ice"

Glacier2_Router_ice.py: \
    "$(slicedir)\Glacier2\Router.ice" \
    "$(slicedir)/Ice/Router.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Glacier2/Session.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/Glacier2/PermissionsVerifier.ice"

Glacier2_RouterF_ice.py: \
    "$(slicedir)\Glacier2\RouterF.ice"

Glacier2_Session_ice.py: \
    "$(slicedir)\Glacier2\Session.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice"

Glacier2_SSLInfo_ice.py: \
    "$(slicedir)\Glacier2\SSLInfo.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

IceBox_IceBox_ice.py: \
    "$(slicedir)\IceBox\IceBox.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/CommunicatorF.ice" \
    "$(slicedir)/Ice/PropertiesF.ice" \
    "$(slicedir)/Ice/SliceChecksumDict.ice"

IceGrid_Admin_ice.py: \
    "$(slicedir)\IceGrid\Admin.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/Properties.ice" \
    "$(slicedir)/Ice/PropertiesAdmin.ice" \
    "$(slicedir)/Ice/SliceChecksumDict.ice" \
    "$(slicedir)/Glacier2/Session.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/IceGrid/Exception.ice" \
    "$(slicedir)/IceGrid/Descriptor.ice"

IceGrid_Descriptor_ice.py: \
    "$(slicedir)\IceGrid\Descriptor.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

IceGrid_Exception_ice.py: \
    "$(slicedir)\IceGrid\Exception.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

IceGrid_FileParser_ice.py: \
    "$(slicedir)\IceGrid\FileParser.ice" \
    "$(slicedir)/IceGrid/Admin.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/Properties.ice" \
    "$(slicedir)/Ice/PropertiesAdmin.ice" \
    "$(slicedir)/Ice/SliceChecksumDict.ice" \
    "$(slicedir)/Glacier2/Session.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/IceGrid/Exception.ice" \
    "$(slicedir)/IceGrid/Descriptor.ice"

IceGrid_Locator_ice.py: \
    "$(slicedir)\IceGrid\Locator.ice" \
    "$(slicedir)/Ice/Locator.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/ProcessF.ice"

IceGrid_Observer_ice.py: \
    "$(slicedir)\IceGrid\Observer.ice" \
    "$(slicedir)/Glacier2/Session.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/IceGrid/Exception.ice" \
    "$(slicedir)/IceGrid/Descriptor.ice" \
    "$(slicedir)/IceGrid/Admin.ice" \
    "$(slicedir)/Ice/Properties.ice" \
    "$(slicedir)/Ice/PropertiesAdmin.ice" \
    "$(slicedir)/Ice/SliceChecksumDict.ice"

IceGrid_Query_ice.py: \
    "$(slicedir)\IceGrid\Query.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/IceGrid/Exception.ice"

IceGrid_Registry_ice.py: \
    "$(slicedir)\IceGrid\Registry.ice" \
    "$(slicedir)/IceGrid/Exception.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/IceGrid/Session.ice" \
    "$(slicedir)/Glacier2/Session.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/IceGrid/Admin.ice" \
    "$(slicedir)/Ice/Properties.ice" \
    "$(slicedir)/Ice/PropertiesAdmin.ice" \
    "$(slicedir)/Ice/SliceChecksumDict.ice" \
    "$(slicedir)/IceGrid/Descriptor.ice"

IceGrid_Session_ice.py: \
    "$(slicedir)\IceGrid\Session.ice" \
    "$(slicedir)/Glacier2/Session.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Glacier2/SSLInfo.ice" \
    "$(slicedir)/IceGrid/Exception.ice"

IceGrid_UserAccountMapper_ice.py: \
    "$(slicedir)\IceGrid\UserAccountMapper.ice"

IcePatch2_FileInfo_ice.py: \
    "$(slicedir)\IcePatch2\FileInfo.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

IcePatch2_FileServer_ice.py: \
    "$(slicedir)\IcePatch2\FileServer.ice" \
    "$(slicedir)/IcePatch2/FileInfo.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

IceStorm_Metrics_ice.py: \
    "$(slicedir)\IceStorm\Metrics.ice" \
    "$(slicedir)/Ice/Metrics.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"

IceStorm_IceStorm_ice.py: \
    "$(slicedir)\IceStorm\IceStorm.ice" \
    "$(slicedir)/Ice/Identity.ice" \
    "$(slicedir)/Ice/SliceChecksumDict.ice" \
    "$(slicedir)/IceStorm/Metrics.ice" \
    "$(slicedir)/Ice/Metrics.ice" \
    "$(slicedir)/Ice/BuiltinSequences.ice"
