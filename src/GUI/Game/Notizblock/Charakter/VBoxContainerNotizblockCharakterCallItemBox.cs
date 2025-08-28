using Godot;
using LastCallundertheBridge.src.Autoload;
using LastCallundertheBridge.src.Logik.CallManager;
using System;

namespace LastCallundertheBridge.src.GUI.Game.Notizblock.Charakter;

public partial class VBoxContainerNotizblockCharakterCallItemBox : VBoxContainer
{
    //  Attribute
    private CallItem callItem;
    private CharakterCallManager charakterCallManager;

    // Methoden
    public void setCallItem(CallItem ci, CharakterCallManager ccm)
    {
        charakterCallManager = ccm;
        callItem = ci;
        updateBox();
    }
    public void updateBox()
    {
        //GD.Print("CallItem Box updated: " + callItem.EmpfängerName);
        updateLabel("GridContainerHeader/LabelEmpfängerWert", callItem.EmpfängerName);
        updateLabel("GridContainerHeader/LabelTitleWert", callItem.Title);
        
    }
    private void updateLabel(String nodePath, String text) 
    {
        Label label = GetNode<Label>(nodePath);
        label.Text = text;
    }

    //  Signals
    private void ButtonAbspielenPressed()
    {
        GetNode<AutoloadCallManager>("/root/AutoloadCallManager").hauptscreen.startDialog(callItem, charakterCallManager.Name);
    }
}
