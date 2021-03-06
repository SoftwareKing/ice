// **********************************************************************
//
// Copyright (c) 2003-2015 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

package test.Ice.facets;

import test.Ice.facets.Test._DDisp;

public final class DI extends _DDisp
{
    public
    DI()
    {
    }

    @Override
    public String
    callA(Ice.Current current)
    {
        return "A";
    }

    @Override
    public String
    callB(Ice.Current current)
    {
        return "B";
    }

    @Override
    public String
    callC(Ice.Current current)
    {
        return "C";
    }

    @Override
    public String
    callD(Ice.Current current)
    {
        return "D";
    }
}
