using Godot;
using LastCallundertheBridge.src.Autoload;
using System;

namespace LastCallundertheBridge.src.GUI.Game.Transkriptpapier;

public partial class HBoxDialogLine : HBoxContainer
{
    //  Methods 
    public void addTextLabelName(String name)
    {
        Label label = GetNode<Label>("LabelName");
        label.Text = name + ":";
    }
    public void addTextRichTextLabelDialog(String text) 
    {
        RichTextLabel rtlDialog = GetNode<RichTextLabel>("RichTextLabelDialog");
        rtlDialog.Text = text;
    }
    //  Signals
    private void RichTextLabelDialogMetaClicked(String meta)
    {
        GetNode<AutoloadCallManager>("/root/AutoloadCallManager").adddictionaryBaseCallManagerItemSpielerdaten(Int32.Parse(meta));
    }
}
