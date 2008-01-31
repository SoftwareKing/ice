// **********************************************************************
//
// Copyright (c) 2003-2008 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

using Test;
using System.Diagnostics;

public class Client
{
    private static int
    run(string[] args, Ice.Communicator communicator)
    { 
        AllTests.allTests(communicator);
        
        //
        // Shutdown the IceBox server. 
        //
        Ice.ProcessPrxHelper.uncheckedCast(
            communicator.stringToProxy("DemoIceBox/admin -f Process:default -p 9996")).shutdown();
        return 0;
    }

    public static void Main(string[] args)
    {
        int status = 0;
        Ice.Communicator communicator = null;

        Debug.Listeners.Add(new ConsoleTraceListener());

        try
        {
            communicator = Ice.Util.initialize(ref args);
            status = run(args, communicator);
        }
        catch(System.Exception ex)
        {
            System.Console.Error.WriteLine(ex);
            status = 1;
        }

        if(communicator != null)
        {
            try
            {
                communicator.destroy();
            }
            catch (Ice.LocalException ex)
            {
                System.Console.Error.WriteLine(ex);
                status = 1;
            }
        }

        if(status != 0)
        {
            System.Environment.Exit(status);
        }
    }
}
