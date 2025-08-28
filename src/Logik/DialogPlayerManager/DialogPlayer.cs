using System;
using LastCallundertheBridge.src.Logik.CallManager;

namespace LastCallundertheBridge.src.Logik.DialogPlayerManager;

public class DialogPlayer
{
    //  Attribute
    private CallItem CI;
    private int Counter = 0;
    public Boolean Aktiv = true;

    //  Constructor
    public DialogPlayer(CallItem ci)
    {
        CI = ci;
    }

    //  Methoden
    public CallLine GetCallLine() {

        if (CI.arrayCallLine.Count > Counter)
        {
            CallLine callLine = CI.arrayCallLine[Counter];
            Counter++;
            return callLine;
        }
        else
        {
            Aktiv = false;
            return null;
        }
        
    }
}
