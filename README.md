# Seminario - Machine Learning: Regressione Lineare e Logistica e loro applicazioni

<p align='justify'> Un algoritmo di <b>Machine Learning</b> è un algoritmo in grado di apprendere dai dati. Per capire il significato di apprendere si fa riferimento alla definizione di Tom Mitchell: </p>

> "Un programma apprende dall'esperienza E rispetto a un task T e a una misura delle sue prestazioni P se le prestazioni del programma sul task T, misurate da P, migliorano con l'esperienza E"

<p align='justify'> Il Machine Learning ci consente di risolvere problemi che sarebbero troppo complessi da trattare con le tecniche tradizionali di programmazione. Si supponga a tal proposito di voler realizzare un algoritmo di Machine Learning in grado di individuare email spam a partire da alcuni esempi di email spam e regolari, che costituiscono il nostro training set. In questo caso il task T è l'individuazione di email spam, l'esperienza E è data dal training set e una possibile misura per le prestazioni P è l'accuracy, ossia la frazione di email  correttamente individuate dall'algoritmo.
Realizzare lo stesso algoritmo con le tecniche di programmazione tradizionale richiederebbe la ricerca di pattern ricorrenti nelle email spam. Il tutto si riduce alla scrittura di regole lunghe e complesse, ma soprattutto difficili da manutenere. Un programma basato sul Machine Learning invece è in grado, attraverso un algoritmo di apprendimento, di imparare automaticamente quali sono le caratteristiche di una email tali da renderla spam. Riusciamo così a ottenere risultati più affidabili e un programma più breve e facile da manutenere. Eventuali cambiamenti dei pattern nelle email spam saranno appresi automaticamente dal modello di Machine Learning, senza intervento umano, mentre in un programma tradizionale sarebbe necessario individuare manualmente tali pattern per poi aggiornare le regole.

I modelli di Machine Learning hanno applicazione in numerosi ambiti: nella manutenzione predittiva permettono di reagire in maniera tempestiva alla rilevazione di eventuali anomalie nei dati o guasti. Possono anche essere utilizzati per prevedere eventi futuri come l'andamento del prezzo di un'azione, previsioni metereologiche e persino i risultati delle elezioni presidenziali americane. 
Come nella vita, anche in queste situazioni prevale la logica che: </p>

> "Prevedere è meglio che curare"

<p align='justify'> Evitiamo così di dover sostenere maggiori costi in caso di complicazioni non pianificate.

Si riportano i casi di applicazione che saranno presi in esame:

1. Previsione del costo di un immobile.
2. Previsione del costo assicurazione.
3. Previsione positività al SARS-CoV2 (COVID19) di un paziente.

In tutti e tre i casi, a partire da un insieme di dati iniziali $x$ e di uscite corrispondenti $y$, viene addestrato un modello con un opportuno algoritmo di ottimizzazione per apprendere la relazione che sussiste tra l'ingresso e l'uscita. In tal modo sarà possibile, a partire da nuovi dati di ingresso $\hat{x}$, stimare l'uscita corrispondente $\hat{y}$.

In questo lavoro saranno approfonditi i modelli di Regressione Lineare e di Regressione Logistica, evidenziandone le differenze e la base teorica. </p>
