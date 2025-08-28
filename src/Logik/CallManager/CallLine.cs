using Godot; 
using System; 

namespace LastCallundertheBridge.src.Logik.CallManager;  

[GlobalClass] 
[Tool] 
public partial class CallLine : BaseCallManagerItem {     
    //  Attributes
    [ExportGroup("Call Line")]    
    [Export(PropertyHint.File, "*.ogg")]     
    public String AudioPath { get; private set; }     
    [Export]     
    public float AudioDelay { get; private set; } = 0.0f;     
    [Export]     
    public bool IsPlayerLine { get; private set; } = false;   
    [ExportSubgroup("Line Details")]
    [Export]
    public String SpeakerName { get; private set; } = "Unknown";
    [Export(PropertyHint.MultilineText)]     
    public String Text { get; private set; }     
       
    
    //  Methods

}