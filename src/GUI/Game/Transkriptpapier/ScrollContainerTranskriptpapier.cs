using Godot;
using LastCallundertheBridge.src.Logik.CallManager;
using System;

namespace LastCallundertheBridge.src.GUI.Game.Transkriptpapier;

public partial class ScrollContainerTranskriptpapier : VBoxContainer
{
    //  Attribute
    private PackedScene _psHBoxDialogLine;

    // Methoden
    public override void _Ready()
    {
        // Szene nur einmal laden
        _psHBoxDialogLine = GD.Load<PackedScene>("res://Scene/Game/Transkriptpapier/h_box_dialog_line.tscn");

        if (_psHBoxDialogLine == null)
        {
            GD.PrintErr("HBoxDialogLine-Szene konnte nicht geladen werden!");
        }

        setHeaderText("", "");
    }
    public void clearLines()
    {
        foreach (Node item in GetNode<VBoxContainer>("ScrollContainerDialog/VBoxContainer").GetChildren())
        {
            item.QueueFree();
        }
    }
    public void setHeaderText(String von, String zu)
    {
        setTitleVon(von);
        setTitleZu(zu);
    }
    private void setTitleVon(String Text)
    {
        setLabelTextfromNode("HBoxContainerHeader/HBoxContainerVON/LabelVonInhalt", Text);
    }
    private void setTitleZu(String Text)
    {
        setLabelTextfromNode("HBoxContainerHeader/HBoxContainerZU/LabelZuInhalt", Text);
    }
    private void setLabelTextfromNode(String nodePath, String Text)
    {
        var label = GetNodeOrNull<Label>(nodePath);
        if (label != null)
        {
            label.Text = Text;
        }
        else
        {
            GD.PrintErr($"Label unter dem Pfad '{nodePath}' nicht gefunden.");
        }
    }
    public void addLine(CallLine cl)
    {
        if (_psHBoxDialogLine?.Instantiate() is not HBoxDialogLine hbdl)
        {
            GD.PrintErr("Instanzierung von HBoxDialogLine fehlgeschlagen.");
            return;
        }

        hbdl.addTextLabelName(cl.SpeakerName);
        hbdl.addTextRichTextLabelDialog(cl.Text);

        var container = GetNodeOrNull<VBoxContainer>("ScrollContainerDialog/VBoxContainer");
        if (container != null)
        {
            container.AddChild(hbdl);
        }
        else
        {
            GD.PrintErr("ScrollContainerDialog/VBoxContainer nicht gefunden.");
        }
    }
}
