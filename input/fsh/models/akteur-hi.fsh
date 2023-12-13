// -------------------------------------------------------------------------------
//  Logical Model akteur-hi.fsh
// -------------------------------------------------------------------------------
Logical: AkteurHI
Id: AkteurHI
Title: "Strukturdaten der beteiligten Einrichtungen/Akteure"
// Was genau ist eine "Einrichtung"?
* Einrichtung 1..1 string "Einrichtungsbezeichnung"
* Einrichtungsart 1..1 CodeableConcept "extramural | intramural"
// Bezieht sich die Fachrichtung auf die Einrichtung oder den GDL?
* Fachrichtung 1..1 CodeableConcept "Fachrichtung (AM | IM | etc.)"
* Adresse 1..* Address "Adresse/politischer Bezirk"

// muss der Personalstand regelmäßig erhoben werden; Quartalsende?
* Personalstand 1..* BackboneElement "Personalstand (Quartalsende) - Anzahl der VZÄ/Köpfe je Berufsgruppe, die am DMP aktiv beteiligt sind"
// Muss die Anzahl explizit erhoben werden oder könnte diese auch abgeleitet werden aus den dokumentierten GDL?
* Personalstand.Anzahl 1..1 integer "Anzahl"
* Personalstand.Berufsgruppe 1..1 CodeableConcept "Berufsgruppe"
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
// Was soll hiermit dokumentiert werden?
* Konsultationen 1..1 date "Datum e-card-Steckung"
