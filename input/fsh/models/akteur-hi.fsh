// -------------------------------------------------------------------------------
//  Logical Model akteur-hi.fsh
// -------------------------------------------------------------------------------
Logical: AkteurHI
Id: AkteurHI
Title: "Strukturdaten der beteiligten Einrichtungen/Akteure"
* Einrichtung 1..1 string "Einrichtungsbezeichnung"
* Einrichtungsart 1..1 code "extramural | intramural"
* Adresse 1..* Address "Adresse/politischer Bezirk"
* Personalstand 1..1 BackboneElement "Anzahl der VZÄ/Köpfe je Berufsgruppe, die am DMP aktiv beteiligt sind"
* Personalstand.Anzahl 1..1 integer "Anzahl"
* Personalstand.Berufsgruppe 1..1 code "Berufsgruppe"
* GDL 1..* BackboneElement "GDL"
* GDL.Vorname 1..* string "Vorname GDL"
* GDL.Zuname 1..* string "Zuname GDL"
* GDL.Vertragspartnernummer 1..1 integer "Vertragspartnernummer"
* GDL.Teilnahmebeginn 1..1 date "Teilnahmebeginn"
* GDL.Schulungsnachweis 1..1 boolean "Schulungsnachweis"
* GDL.Austritt 0..1 BackboneElement "Austritt"
* GDL.Austritt.Austrittsanfrage 0..1 boolean "Austrittsanfrage"
* GDL.Austritt.Teilnahmeende 0..1 date "Teilnahmeende"
* Schulungen 1..1 BackboneElement "Schulung"
* Schulungen.aktiv 1..1 boolean "Schulungsaktivitäten"
* Schulungen.Anzahl 0..1 integer "Anzahl der durchgeführten DM(P)-spezifischen Patientenschulungen"
* Konsultationen 1..1 date "Datum e-card-Steckung"
