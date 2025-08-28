using System; 
using Godot; 
using Godot.Collections;  

namespace LastCallundertheBridge.src.Logik.CallManager;  

[GlobalClass] 
[Tool] 
public partial class CallItem : BaseCallManagerItem {     
    //  Attributes
    [ExportGroup("Call Item")]     
    [Export]     
    public String Title { get; private set; }     
    [Export]     
    public  Array<CallLine> arrayCallLine { get; private set; }     
    [ExportSubgroup("Empfänger")]     
    [Export]     
    public int EmpfängerId { get; private set; }     
    [Export]     
    public String EmpfängerName { get; private set; }    
    
    //  Methods

}