using Godot;
using LastCallundertheBridge.src.Logik.CallManager;
using System;

namespace LastCallundertheBridge.src.GUI.Game.Notizblock.Charakter;

public partial class VBoxContainerNotizblockCharakterBox : VBoxContainer
{
    //  Attribute
    private CharakterCallManager charakter;
    private PackedScene packedSceneVBoxContainerNotizblockCharakterCallItemBox;

    // Methoden
    public void setAll(CharakterCallManager kc, PackedScene psvbnccib)
    {
        setCharakter(kc);
        setpackedSceneVBoxContainerNotizblockCharakterCallItemBox(psvbnccib);
        updateALL();
    }
    private void setCharakter(CharakterCallManager kc)
    {
        charakter = kc;
    }
    private void setpackedSceneVBoxContainerNotizblockCharakterCallItemBox(PackedScene psvbnccib)
    {
        packedSceneVBoxContainerNotizblockCharakterCallItemBox = psvbnccib;
    }
    private void updateALL()
    {
        updateBox();
        updateText();
    }
    private void updateLabel(String nodePath, String text) 
    {
        Label label = GetNode<Label>(nodePath);
        label.Text = text;
    }
    private void updateText()
    {
        updateLabel("HBoxContainer/LabelNameInhalt", charakter.Name);
    }
    public void updateBox() 
    {
        foreach (CallItem item in charakter.arrayCallItem)
        {
            if (packedSceneVBoxContainerNotizblockCharakterCallItemBox?.Instantiate() is not VBoxContainerNotizblockCharakterCallItemBox vbcnccib)
            {
                return;
            }

            vbcnccib.setCallItem(item,charakter);
            GetNode<VBoxContainer>("VBoxContainerCallItems").AddChild(vbcnccib);
        }
    }
}
