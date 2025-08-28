using Godot;
using Godot.Collections;
using LastCallundertheBridge.src.GUI.Game;
using LastCallundertheBridge.src.Logik.CallManager;
using System;

namespace LastCallundertheBridge.src.Autoload;  

public partial class AutoloadCallManager : Node {     
    //  Attributes
    private CallManager callManager;
    public Hauptscreen hauptscreen;
    [ExportGroup("Call Manager Spielerdaten")]
    [Export]
    public Dictionary<int, BaseCallManagerItem> dictionaryBaseCallManagerItemSpielerdaten { get; private set; } = new Dictionary<int, BaseCallManagerItem>();

    //  Methods
    public void adddictionaryBaseCallManagerItemSpielerdaten(BaseCallManagerItem item)
    {
        dictionaryBaseCallManagerItemSpielerdaten.Add(item.Id, item);
    }
    public void adddictionaryBaseCallManagerItemSpielerdaten(int id) 
    {
        adddictionaryBaseCallManagerItemSpielerdaten(callManager.GetBaseCallManagerItemFromList(id));
        updateGame();
    }
    public void loadGame(string pfad)     
    {         
        //  Lade Spielstände
        callManager = GD.Load<CallManager>(pfad);     
    }     
    public Boolean startGame()     
    {         
        if(callManager != null)         
        {
            return false;
        }else         
        {             
            callManager = GD.Load<CallManager>("res://Resource/Call Manager/CallManager.tres");             
            GD.Print("Startet das Spiel mit dem CallManager: ");
            CallManagerSpieldatenNeu();


            return true;

        }                  
    }
    public void startDialog(CharakterCallManager charakter, CallItem callItem)
    {
        if(hauptscreen != null)
        {
            if(callItem != null && charakter != null)
            {
                hauptscreen.startDialog(callItem, charakter.Name);
            }else
            {
                GD.PrintErr("CallItem oder Charakter ist null.");
            }
        }else
        {
            GD.PrintErr("Hauptscreen ist null.");
        }
    }
    public void TestMethod()     
    {         
        GD.Print("AutoloadCallManager TestMethod called");     
    }
    public void CallManagerSpieldatenNeu()
    {
        adddictionaryBaseCallManagerItemSpielerdaten(101);
    }
    public void updateGame()
    {
        hauptscreen.updateNotizblock();
    }
    
}