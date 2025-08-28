using Godot; 
using System;  

namespace LastCallundertheBridge.src.GUI.Game;  

public partial class TelefonButton : Button {      
    //  Methods
    public override void _Ready()     
    {         
        switchTelefonMode(false);     
    }     
    private void switchTelefonMode(Boolean glow)     
    {         
        TextureRect trTelefonNormal = GetNode<TextureRect>("TextureRectTelefonNormal");         
        TextureRect trTelefonwithGlow = GetNode<TextureRect>("TextureRectTelefonWithGlow");         
        
        if (glow)         
        {             
            trTelefonNormal.Visible = false;             
            trTelefonwithGlow.Visible = true;         
        }         
        else         
        {             
            trTelefonNormal.Visible = true;             
            trTelefonwithGlow.Visible = false;         
        }     
    }      
    //  Signals
    private void TelefonButtonMouseEntered()     
    {         
        switchTelefonMode(true);     
    }     
    private void TelefonButtonMouseExited()     
    {         
        switchTelefonMode(false);     
    } 
}