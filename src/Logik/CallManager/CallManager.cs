using Godot; 
using Godot.Collections;  

namespace LastCallundertheBridge.src.Logik.CallManager;  

[GlobalClass] 
[Tool] 
public partial class CallManager : Resource {     
    //  Attributes
    [ExportGroup("Call Manager")]     
    [Export]     
    public Array<BaseCallManagerItem> arrayBaseCallManagerItem { get; private set; }     
    
    //  Methods
    public BaseCallManagerItem GetBaseCallManagerItemFromList(int id)     
    {         
        foreach (BaseCallManagerItem charakter in arrayBaseCallManagerItem)         
        {       
            GD.Print("Prüfe Charakter mit ID: " + charakter.Id + " Was " + id);
            if (charakter.Id.Equals(id))             
            {                 
                return charakter;             
            }         
        }         
        return null;     
    } 
}