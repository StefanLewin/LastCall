using Godot;
using LastCallundertheBridge.src.Autoload;
using LastCallundertheBridge.src.GUI.Game.Notizblock.Charakter;
using LastCallundertheBridge.src.Logik.CallManager;

namespace LastCallundertheBridge.src.GUI.Game.Notizblock;

public partial class TabContainerNotizblock : TabContainer
{
    //  Attribute

    //  Methoden
    private void alleListefree()
    {
        GetNode<ScrollContainerNotizblockCharakter>("Charakter/ScrollContainerNotizblockCharakter").Listefree();
    }
    private void alleListenFullen()
    {
        GD.Print("Fülle alle Listen im Notizblock");
        foreach (BaseCallManagerItem item in GetNode<AutoloadCallManager>("/root/AutoloadCallManager").dictionaryBaseCallManagerItemSpielerdaten.Values)
        {
            switch (item)
            {
                case CharakterCallManager charakter:
                    GetNode<ScrollContainerNotizblockCharakter>("Charakter/ScrollContainerNotizblockCharakter").addListe(charakter);
                    break;
                default:
                    
                    break;
            }
        }
    }
    public void alleListenUpdate()
    {
        alleListefree();

        alleListenFullen();
    }
}
