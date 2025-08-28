using Godot;
using LastCallundertheBridge.src.Logik.CallManager;
using System;

namespace LastCallundertheBridge.src.GUI.Game.Notizblock.Charakter;

public partial class ScrollContainerNotizblockCharakter : ScrollContainer
{
    //  Attribute
    private PackedScene packedSceneVBoxContainerNotizblockCharakterBox;
    private PackedScene packedSceneVBoxContainerNotizblockCharakterCallItemBox;

    // Methoden
    public override void _Ready()
    {
        try
        {
            packedSceneVBoxContainerNotizblockCharakterBox = GD.Load<PackedScene>("res://Scene/Game/Notizblock/Charakter/v_box_container_notizblock_charakter_box.tscn");
            packedSceneVBoxContainerNotizblockCharakterCallItemBox = GD.Load<PackedScene>("res://Scene/Game/Notizblock/Charakter/v_box_container_notizblock_charakter_call_item_box.tscn");

            if (packedSceneVBoxContainerNotizblockCharakterBox == null)
                GD.PrintErr("Fehler beim Laden: scroll_container_notizblock_charakter.tscn ist null.");

            if (packedSceneVBoxContainerNotizblockCharakterCallItemBox == null)
                GD.PrintErr("Fehler beim Laden: v_box_container_notizblock_charakter_call_item_box.tscn ist null.");
        }
        catch (Exception ex)
        {
            GD.PrintErr($"Exception beim Laden der PackedScenes: {ex.Message}");
        }

    }
    public void Listefree()
    {
        foreach (Node item in GetNode<VBoxContainer>("VBoxContainer").GetChildren())
        {
            item.QueueFree();
        }
    }
    public void addListe(CharakterCallManager charakter)
    {
        if (packedSceneVBoxContainerNotizblockCharakterBox?.Instantiate() is not VBoxContainerNotizblockCharakterBox vbcncb)
        {
            GD.PrintErr("Konnte VBoxContainerNotizblockCharakterBox nicht instanzieren.");
            return;
        }
        vbcncb.setAll(charakter, packedSceneVBoxContainerNotizblockCharakterCallItemBox);
        GetNode<VBoxContainer>("VBoxContainer").AddChild(vbcncb);
    }
}
