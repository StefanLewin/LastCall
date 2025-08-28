using Godot; 
using LastCallundertheBridge.src.Autoload;
using LastCallundertheBridge.src.GUI.Game.Notizblock;
using LastCallundertheBridge.src.GUI.Game.Transkriptpapier;
using LastCallundertheBridge.src.Logik.CallManager;
using LastCallundertheBridge.src.Logik.DialogPlayerManager;
using System;  

namespace LastCallundertheBridge.src.GUI.Game;  

public partial class Hauptscreen : Control {     
    //  Attributes
    private static String AutoloadLocation = "/root/AutoloadCallManager";
    private DialogPlayer dialogPlayer;

    //  Methods
    public override void _Ready()     
    {          
        //  Autoload Aktiv?
        AutoloadCallManager acm = GetNode<AutoloadCallManager>(AutoloadLocation);
        acm.hauptscreen = this;
        Boolean start = acm.startGame();
        if(start)         
        {             
                     
            neuesSpielstarten();         
        }         
        else         
        {             
            
        }

    }
    private void neuesSpielstarten()     
    {         
        GD.Print("Neues Spiel gestartet");
        GetNode<AutoloadCallManager>(AutoloadLocation).CallManagerSpieldatenNeu();
        GetNode<TabContainerNotizblock>("TabContainerNotizblock").alleListenUpdate();
    }
    public void startDialog(CallItem item, String von)
    {
        ScrollContainerTranskriptpapier sctn = GetNode<ScrollContainerTranskriptpapier>("ScrollContainerTanskriptNotizblock");
        sctn.setHeaderText(von, item.EmpfängerName);
        startDialog(item);
    }
    public void startDialog(CallItem item)
    {


        GetNode<AudioStreamPlayer>("AudioStreamPlayerDialog").Stop();
        GetNode<ScrollContainerTranskriptpapier>("ScrollContainerTanskriptNotizblock").clearLines();

        dialogPlayer = new DialogPlayer(item);
        
        PlayWeiter();
    }
    public void PlayWeiter()
    {
        CallLine callLine = dialogPlayer.GetCallLine();
        GD.Print("Start ");
        if (callLine != null) 
        { 
            PlayLine(callLine);
        }
        
    }
    private void PlayLine(CallLine line)
    {
        NotizblockLinehinzufgen(line);
        AudioLineStarten(line);
    }
    private void NotizblockLinehinzufgen(CallLine line)
    {
        ScrollContainerTranskriptpapier sctn = GetNode<ScrollContainerTranskriptpapier>("ScrollContainerTanskriptNotizblock");
        sctn.addLine(line);
    }
    private void AudioLineStarten(CallLine line)
    {
        AudioStreamPlayer asp = GetNode<AudioStreamPlayer>("AudioStreamPlayerDialog");
        AudioStreamOggVorbis asov = GD.Load<AudioStreamOggVorbis>(line.AudioPath);
        asp.Stream = asov;
        asp.Play();
    }
    public void updateNotizblock()
    {
        GetNode<TabContainerNotizblock>("TabContainerNotizblock").alleListenUpdate();
    }

    //  Signals
    private void TelefonButtonPressed()     
    {         
        GD.Print("Telefon Button Pressed");     
    } 
    private void AudioStreamPlayerDialogFinished()
    {
        PlayWeiter();
    }
}