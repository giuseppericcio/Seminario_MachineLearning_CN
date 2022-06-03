# Seminario - Modelli Predittivi per il Calcolo Numerico

La Modellazione Predittiva è una tecnica del Machine Learning, uno dei canali per
l’applicazione dell’Intelligenza Artificiale, che da anni ormai è in sviluppo in diversi ambiti
applicativi.
Implementare modelli predittivi a supporto di processi vuol dire prevedere che cosa potrebbe
accadere in futuro, cosa non da poco se ragioniamo in termini di performance aziendali e non.
Come nella vita, anche in queste situazioni prevale la logica che ”prevedere `e meglio che
curare”, per evitare di dover sostenere maggiori costi in caso di complicanze non pianificate.
La sua trasversalit`a emerge in progetti che variano dalla manutenzione predittiva per poter
reagire in maniera tempestiva ad eventuali guasti, al rilevamento di frodi (es. attraverso
l’identificazione di anomalie nei dati), dall’analisi qualit`a nei processi produttivi alla gestione
magazzino e logistica, fino ai servizi finanziari, marketing e analisi delle reti sociali.

I casi di applicazione che saranno presi in esame saranno:
• Previsione del costo di un immobile.
• Previsione assicurativa medicale.
• Previsione potenziale al SARS-CoV2 (COVID19) di un paziente.

Ognuno di essi applicato ad uno specifico modello di predizione.
In generale, come funziona? Basandosi su un set di variabili di input x, l’analisi predittiva
addestra un modello allo scopo di prevedere i valori futuri dei nuovi dati y, la relazione
matematica del problema pu`o essere rappresentata in questa maniera:

z = ax + b (1)
y = σ(z) (2)

In cui, i parametri a, b = θ, devono essere determinati in maniera opportuna tramite un
metodo esatto oppure euristico come vedremo in seguito, mentre la funzione di attivazione
σ `e un’opportuna funzione che permette di convertire la variabile continua z in una variabile
categorica ovvero che appartiene ad una specifica classe.
Il modello identifica quindi le relazioni e i pattern che legano le variabili, assegnando anche
un punteggio in base agli elementi che `e stato addestrato a cercare.
Dunque, tale punteggio pu`o essere utilizzato come Business Intelligence per valutare il rischio
o i potenziali vantaggi di una serie di condizioni e consente di determinare la probabilit`a che
un determinato evento si verifichi.
Una delle tecniche di modellazione predittiva pi`u diffusa `e la regressione. In questo trattato
verranno studiate, in particolare, la Regressione Lineare e la Regressione Logistica
motivando risposte e differenze. I modelli di regressione utilizzano calcoli numerici per
identificare le relazioni fra le variabili in gioco.
In generale i modelli di regressione lineari restituiscono risultati continui con infinite possi-
bilit`a (come il potenziale valore degli immobili a partire da un determinato costo al metro
quadrato), mentre quelli logistici restituiscono un numero di possibilit`a limitato (ad esem-
pio se una determinata abitazione in un quartiere specifico verr`a venduta sopra o sotto un
determinato prezzo
