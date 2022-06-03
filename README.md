# Seminario - Modelli Predittivi per il Calcolo Numerico

La Modellazione Predittiva è una tecnica del Machine Learning, uno dei canali per
l’applicazione dell’Intelligenza Artificiale, che da anni ormai è in sviluppo in diversi ambiti
applicativi.
Implementare modelli predittivi a supporto di processi vuol dire prevedere che cosa potrebbe
accadere in futuro, cosa non da poco se ragioniamo in termini di performance aziendali e non.
Come nella vita, anche in queste situazioni prevale la logica che ”prevedere è meglio che
curare”, per evitare di dover sostenere maggiori costi in caso di complicanze non pianificate.

La sua trasversalità emerge in progetti che variano dalla manutenzione predittiva per poter
reagire in maniera tempestiva ad eventuali guasti, al rilevamento di frodi (es. attraverso
l’identificazione di anomalie nei dati), dall’analisi qualità nei processi produttivi alla gestione
magazzino e logistica, fino ai servizi finanziari, marketing e analisi delle reti sociali.

I casi di applicazione che saranno presi in esame saranno:
<br> • Previsione del costo di un immobile.
<br> • Previsione assicurativa medicale.
<br> • Previsione potenziale al SARS-CoV2 (COVID19) di un paziente.

Ognuno di essi applicato ad uno specifico modello di predizione.
In generale, come funziona? Basandosi su un set di variabili di input x, l’analisi predittiva
addestra un modello allo scopo di prevedere i valori futuri dei nuovi dati y, la relazione
matematica del problema pu`o essere rappresentata in questa maniera:

<br> z = ax + b (1)
<br> y = σ(z) (2)

In cui, i parametri a, b = θ, devono essere determinati in maniera opportuna tramite un
metodo esatto oppure euristico come vedremo in seguito, mentre la funzione di attivazione
σ è un’opportuna funzione che permette di convertire la variabile continua z in una variabile
categorica ovvero che appartiene ad una specifica classe.
Il modello identifica quindi le relazioni e i pattern che legano le variabili, assegnando anche
un punteggio in base agli elementi che è stato addestrato a cercare.
Dunque, tale punteggio può essere utilizzato come Business Intelligence per valutare il rischio
o i potenziali vantaggi di una serie di condizioni e consente di determinare la probabilità che
un determinato evento si verifichi.
Una delle tecniche di modellazione predittiva più diffusa è la regressione. In questo trattato
verranno studiate, in particolare, la Regressione Lineare e la Regressione Logistica
motivando risposte e differenze. I modelli di regressione utilizzano calcoli numerici per
identificare le relazioni fra le variabili in gioco.
In generale i modelli di regressione lineari restituiscono risultati continui con infinite possi-
bilità (come il potenziale valore degli immobili a partire da un determinato costo al metro
quadrato), mentre quelli logistici restituiscono un numero di possibilità limitato (ad esem-
pio se una determinata abitazione in un quartiere specifico verrà venduta sopra o sotto un
determinato prezzo)
