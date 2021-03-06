# Script PlayOnLinux per Gestione Stand Gastronomico ![Build Status](https://img.shields.io/github/workflow/status/MatteoGheza/gestionestandgastronomico-playonlinux/CI)
gestionestandgastronomico.it è un software di Emanuele Gesuato usato per la gestione delle sagre di paese

Eseguendo in PlayOnLinux lo script ```gestionestandgastronomico.sh``` da "Strumenti" -> "Esegui uno script" su PlayOnLinux (o PlayOnMac se si usa MacOS) sarà possibile eseguire il software di gestione delle sagre senza dover avere Windows come sistema operativo.

![](immagini/copertina.png)

# Come posso installarlo?
Puoi installare seguendo pochi semplici passaggi:
1. [Installa PlayOnLinux](https://github.com/MatteoGheza/gestionestandgastronomico-playonlinux#come-posso-installare-playonlinux) se si utilizza un sistema operativo Linux o [PlayOnMac](https://github.com/MatteoGheza/gestionestandgastronomico-playonlinux#come-posso-installare-playonmac) se si utlilizza MacOS
2. Scarica il file [gestionestandgastronomico.sh](https://github.com/MatteoGheza/gestionestandgastronomico-playonlinux/raw/master/gestionestandgastronomico.sh) con tasto destro -> "Salva link con nome" (o simili)
3. Apri PlayOnLinux (o PlayOnMac)  
![](immagini/installazione1.png)
4. Andare su "Strumenti" e poi su "Esegui uno script"  
![](immagini/installazione2.png)
5. Si aprirà una nuova finestra. Bisogna premere su "Avanti"  
![](immagini/installazione3.png)
5. Nella successiva schermata, premere su "Esplora" e selezionare il file ```gestionestandgastronomico.sh``` precedentemente scaricato.
Successivamente, premere su "Avanti"  
![](immagini/installazione4.png)
![](immagini/installazione5.png)
![](immagini/installazione6.png)
6. Si aprirà una nuova finestra, in cui si viene avvertiti che lo script non è verificato.  
Questo perché il file non è ancora stato verificato dagli sviluppatori di PlayOnLinux.  
Nonostante questo avvertimento totalmente automatico, lo script è sicuro; [visualizzare la risposta alla domanda _Questo script è sicuro?_ nella sezione "Domande Frequenti](https://github.com/MatteoGheza/gestionestandgastronomico-playonlinux#e-sicuro-utilizzare-questo-script-come-faccio-a-sapere-che-non-%C3%A8-un-virus).
E' necessario confermare l'uso dello script anche nella successiva schermata, selezionando la checkbox.  
![](immagini/installazione7.png)
![](immagini/installazione8.png)
7. Ora è iniziata l'installazione vera e propria. Premere su "Avanti"  
![](immagini/installazione9.png)
8. Selezionare "Scaricando il programma" e premere su "Avanti"  
![](immagini/installazione10.png)
9. Adesso l'installazione dovrebbe proseguire automaticamente. Attendere la chiusura delle finistre dell'installazione.  
Se l'installazione è terminata correttamente, dovrebbe essere visibile la seguente schermata:  
![](immagini/installazione11.png)
10. Selezionare "Gestione Stand Gastronomico" e premere su "Avvia"  
![](immagini/installazione12.png)
11. Ottimo, ora puoi utilizzare Gestione Stand Gastronomico da Linux/MacOS

# Domande Frequenti
## Come posso installare PlayOnLinux?
Esistono molte guide per l'installazione di PlayOnLinux sulle varie distribuzioni di Linux.  
Per ottenere informazioni chiare e semplici, consiglio la ricerca in internet di una guida, cercando ad esempio "Installare PlayOnLinux su Ubuntu/Arch Linux/Manjaro/Fedora/...".
Di seguito sono riportati alcuni passaggi generali per evitare la ricerca di guide non ufficiali.

Con "Gestore di pacchetti" da interfaccia grafica:
1. Aprire il gestore di pacchetti/gestore dei software, se il sistema operativo usato lo include nei programmi installati
2. Cercare nella casella di ricerca "PlayOnLinux"
3. Selezionare il software con nome "PlayOnLinux" dall'elenco
4. Premere "Installa" e seguire i passaggi indicati a video

Con "Terminale":
1. Aprire l'aplicazione chiamata "Terminale" o "Terminal Emulator"
2. Scrivere i comandi indicati nella seguente tabella, scegliendo quelli adatti al proprio sistema operativo.

| Distribuzione | Comandi da eseguire                                                                                        |
|---------------|------------------------------------------------------------------------------------------------------------|
| Ubuntu        | sudo apt update && sudo apt install playonlinux                                                            |
| Debian        | sudo apt update && sudo apt install playonlinux                                                            |
| Manjaro       | sudo pacman -Sy playonlinux                                                                                |
| Arch Linux    | sudo pacman -Sy playonlinux                                                                                |
| Fedora        | wget http://rpm.playonlinux.com/fedora/yum/base/PlayOnLinux_4.2.3.rpm && sudo rpm –i PlayOnLinux_4.2.3.rpm |

## Come posso installare PlayOnMac?
Per installare PlayOnMac, devi recarti sul sito [https://www.playonmac.com/en/](https://www.playonmac.com/en/) e premere su "Download PlayOnMac"; a quel punto, si scaricherà un file .dmg: devi aprirlo premendo due volte su di esso. A questo punto, segui i passaggi indicati dal programma.
## Il software è utilizzabile per una sagra vera? Ci sono delle funzionalità che non "funzionano"?
Attualmente funziona tutto al 100%, dalla stampa al server web, dall'esportazione alla gestione dell'inventario.  
Non è stato testato in una vera sagra, ma è stato provato per un'ora in una "finta serata", con un ottimo risultato.  
Non ho riscontrato problemi legati alle performance, che mi sono sembrate identiche a quelle riscontrate nella versione per Windows.  
Attualmente, è stato testato solo su Lubuntu, ma dovrebbe funzionare su ogni distro, variante o sistema operativo compatibile con [PlayOnLinux](https://www.playonlinux.com/en/download.html)
## E' sicuro utilizzare questo script? Come faccio a sapere che non è un virus?
![](immagini/installazione7.png)  
Puoi verificare la sicurezza di questo script [leggendone il codice alla relativa pagina su Github](https://github.com/MatteoGheza/gestionestandgastronomico-playonlinux/blob/master/gestionestandgastronomico.sh).  
Il codice "non ha una firma valida" perché non è stato ancora "approvato" dal team di sviluppo di PlayOnLinux.  
In verità, non è stato ancora inviato.  
Questo perché lo script richiede una precisa traduzione in inglese, per poi essere ri-tradotto in Italiano usando uno strumento esterno per le traduzioni, che poi verranno integrate in una nuova versione del programma. Verrà inviato prossimamente, in modo da rendere più veloce, "ufficiale" e "sicura" l'installazione.
