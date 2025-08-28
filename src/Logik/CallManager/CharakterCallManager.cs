using Godot; 
using Godot.Collections; 
using System;

namespace LastCallundertheBridge.src.Logik.CallManager;  

[GlobalClass] 
[Tool] 
public partial class CharakterCallManager: BaseCallManagerItem {     
    //  Attributes
    [ExportGroup("Person")]     
    [Export]     
    public String Name { get; private set; }
    [Export]
    public Color TextFarbe { get; private set; } = Colors.Black;
    [Export]     
    public Array<CallItem> arrayCallItem { get; private set; } 

    //  Methode
    public CallItem GetCallItem(int id)
    {
        foreach (CallItem call in arrayCallItem)
        {
            if (call.Id == id)
            {
                return call;
            }
        }
        return null;
    }

}