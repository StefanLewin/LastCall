using Godot;  

namespace LastCallundertheBridge.src.Logik.CallManager;  

[GlobalClass] 
[Tool] 
public abstract partial class BaseCallManagerItem : Resource {     
    [ExportGroup("BaseCallItem")]     
    [Export]     
    public int Id { get; protected set; } 
}