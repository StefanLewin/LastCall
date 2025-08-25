# Über dieses Git Repo 
---
Wir verfolgen in diesem Repo die folgende Struktur

    |-Main
        |
        |-Dev
        |
            |-Feature 1
            |-Feature 2
            |-Prototyp 1
            |-Prototyp 2
            .
            .
            .

Main ist immer stabil. Auf dem Dev wird entwickelt und von ihm aus gehen Feature und Prototype Branches. Diese Branches werden in den Dev gemerged und dort getestet. Wenn alles funktioniert, kann in den Main gemerged werden.