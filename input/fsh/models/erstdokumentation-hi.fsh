// -------------------------------------------------------------------------------
//  Logical Model erstdokumentation-hi.fsh
// -------------------------------------------------------------------------------
Logical: ErstdokumentationHI
Id: ErstdokumentationHI
Title: "Medizinische Datensätze - Erstdokumentation (im Rahmen der Erstabklärung erhoben/durchgeführt)"
* VPNR 1..1 integer "Vertragspartnernummer"
* Patient 1..1 PatientHI "Patient"
// Datum der Untersuchung?
* Untersuchung 1..1 boolean "Spezifische körperliche Untersuchung"

* Komorbiditaeten 1..1 BackboneElement "Komorbiditäten"
* Komorbiditaeten.KHK 1..1 boolean "Koronare Herzkrankheit"
* Komorbiditaeten.Diabetes 1..1 boolean "Diabetes mellitus"
* Komorbiditaeten.Hypertonie 1..1 boolean "Hypertonie"
* Komorbiditaeten.Herzvitien 1..1 boolean "Herzvitien"
* Komorbiditaeten.VHF 1..1 boolean "Vorhofflimmern/-flattern"
* Komorbiditaeten.CVS 1..1 boolean "Cerebrovaskuläre Störungen"
* Komorbiditaeten.Nieren 1..1 boolean "Chronische Niereninsuffizienz"
* Komorbiditaeten.COB 1..1 boolean "Chronisch obstruktive Bronchitis"
* Komorbiditaeten.COPD 1..1 boolean "Chronisch obstruktive Lungenerkrankung"
* Komorbiditaeten.Schlaf 1..1 boolean "Schlafapnoesyndrom"
* Komorbiditaeten.Depression 1..1 boolean "Depression"
* Komorbiditaeten.Anaemie 1..1 boolean "Anämie"
* Komorbiditaeten.Onko 1..1 boolean "Onkologische Erkrankungen"
* Komorbiditaeten.Kachexie 1..1 boolean "Kachexie"
* Komorbiditaeten.Schmerz 1..1 boolean "Chronische Schmerzen"

* EKG 1..1 boolean "EKG (mit 12 Ableitungen)"
* Echokardiogramm 1..1 boolean "Echokardiographie/LVEF Messung"
* NTproBNP 0..1 string "NT-proBNP" """Mit Blick auf die aktuelle Versorgungssituation muss festgehalten werden, dass die Bestimmung des
NT-proBNP als wichtiger Parameter im Rahmen der Diagnostik sowie als wesentlicher Marker im Krankheitsverlauf für die Primärversorgung
österreichweit nicht einheitlich geregelt ist. Auch in den CHI-Projekten gibt es unterschiedliche Vorgehensweisen. Die einheitliche
Regelung in Bezug auf NT-proBNP ist unabdingbar und sollte entsprechend priorisiert werden."""
* Symptomatik 1..1 CodeableConcept "Symptomatik/klinischer Status (NYHA I | NYHA II | NYHA III | NYHA IV)"
* Kardiologe 1..1 boolean "Abklärung durch Kardiologe im Rahmen der Erstdiagnose" """Der Begriff 'Kardiologe' wird hier der Einfachheit halber synonym für Fachärztin bzw. -arzt für Innere Medizin und Kardiologie
(Ärzteausbildungsordnung 2015) bzw. Fachärztin bzw. -arzt für Innere Medizin mit Additivfach Kardiologie (Ärzteausbildungsordnung
2006) verwendet."""
* Diagnose 1..1 CodeableConcept "HFrEF | HFmrEF | HFpEF"
* Behandlungsziel 1..1 CodeableConcept "1 | 2 | 3a | 3b"
* Ressourcen 1..1 CodeableConcept "Ressourcen der Patienten/Angehörigen (Selbstmanagement möglich (regelmäßiges Monitoring wichtiger Parameter) | prinzipiell Selbstmanagement (Überprüfung in definierten Zeitintervallen) | Kontinuierliche Supervision)"
* Praeferenzen 1..1 BackboneElement "Patienten-/Angehörigenpräferenzen (z.B. Telemonitoring)"
* Praeferenzen.vorhanden 1..1 boolean "Präferenzen vorhanden"
* Praeferenzen.Beschreibung 0..1 string "Beschreibung"
* Lebensqualitaet 1..1 code "Fragebogen Lebensqualität (5-stelliger Code)"
