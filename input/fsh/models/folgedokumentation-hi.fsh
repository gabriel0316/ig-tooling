// -------------------------------------------------------------------------------
//  Logical Model folgedokumentation-hi.fsh
// -------------------------------------------------------------------------------
Logical: FolgedokumentationHI
Id: FolgedokumentationHI
Title: "Medizinische Datensätze - Folgedokumentation"
* VPNR 1..1 integer "Vertragspartnernummer"
* Untersuchungsdatum 1..1 date "Untersuchungsdatum"

// Personendaten
* Patient 1..1 PatientHI "Patient"

// Laufende Versorgung gemäß Pfade
* Versorung 1..1 BackboneElement "Laufende Versorgung gemäß Pfade"
  * geplant 1..1 boolean "Geplanter Kontrolltermin" """Kontrolle bei primärer Anlaufstelle alle 3 Monate bei stabilen Patientinnen bzw. Patienten mit niedrigem Risiko; Kontrolle bei der Kardiologin bzw. beim Kardiologen mindestens alle 3 Monaten für Patientinnen bzw. Patienten mit hohem Risiko; regelmäßige Betreuung in Spezialeinrichtungen von Patientinnen bzw. Patienten mit sehr hohem Risiko"""
  * AnzahlStationaer 1..1 integer "Ungeplante stationäre Behandlung wg. HI seit letzter Dokumentation"
  * Symptomatik 1..1 CodeableConcept "NYHA I | NYHA II | NYHA III | NYHA IV"
  * Behandlungsziel 1..1 BackboneElement "Behandlungsziel"
    * Aenderung 1..1 boolean "Änderung Behandlungsziel gemäß Pfade"
    * Behandlungsziel 1..1 CodeableConcept "1 | 2 | 3a | 3b"

  * insert Komorbiditaeten

  * EKG 1..1 boolean "EKG (mit 12 Ableitungen)"
  * Kardiologe 1..1 boolean "Überweisung an Kardiologin bzw. Kardiologen" """alle 12-18 Monate bei stabilen Patientinnen bzw. Patienten mit niedrigem Risiko;
mind. alle 3 Monaten für Patientinnnen bzw. Patienten mit hohem Risiko"""
  * Echokardiogramm 1..1 boolean "Echokardiographie (jährlich bei stabilen Patientinnen bzw. Patienten mit niedrigem Risiko)"

* Labor 0..1 BackboneElement "Laborbefund Serum-Elektrolyte inkl. eGFR (mindestens halbjährlich zu erheben)"
  * Befund 1..1 Attachment "Befunddokument"
  * Datum 1..1 date "Datum"

// Therapie
* Therapie 1..1 BackboneElement "Therapie"
  * ACE 1..1 BackboneElement "ACE-Hemmer"
    * ACE 1..1 CodeableConcept "ACE-Hemmer (Ja | Nein | Kontraindikation | ARB)"
    * Zieldosis 1..1 CodeableConcept "Evidenzbasierte Zieldosis (Erreicht | Nicht erreicht | Titrationsphase | Max. tolerierte Dosis erreicht)"
  * Betablocker 1..1 BackboneElement "Betablocker"
    * Betablocker 1..1 CodeableConcept "Betablocker (Ja | Nein | Kontraindikation)"
    * Zieldosis 1..1 CodeableConcept "Evidenzbasierte Zieldosis (Erreicht | Nicht erreicht | Titrationsphase | Max. tolerierte Dosis erreicht)"
  * Antikoagulation 1..1 CodeableConcept "Orale Antikoagulantien (Ja | Nein | Kontraindikation)"

// Selbstmanagement (SM)/Schulung
* Selbstmanagement 1..1 BackboneElement "Selbstmanagement (SM)/Schulung"
  * Ressourcen 1..1 CodeableConcept "Ressourcen der Patienten/Angehörigen (Selbstmanagement möglich (regelmäßiges Monitoring wichtiger Parameter) | prinzipiell Selbstmanagement (Überprüfung in definierten Zeitintervallen) | Kontinuierliche Supervision)"
  * Betreuung 1..1 string "Änderungen Betreuungssituation (Angehörige, Pflege, Heimhilfe etc.)"
  * DMPSchulung 1..1 BackboneElement "DM(P)-spezifische Patientenschulung"
    * absolviert 1..1 CodeableConcept "Ja | Nein | Nicht erforderlich"
    * Datum 1..1 date "Datum der letzten Schulung"
  * GewichtSchulung 1..1 BackboneElement "Schulung zur Überwachung des Gewichts"
    * absolviert 1..1 CodeableConcept "Ja | Nein | Nicht erforderlich"
    * Datum 1..1 date "Datum der letzten Schulung"
  * ImpfungBeratung 1..1 BackboneElement "Beratung über Impfungen (Grippe, Pneumokokken)"
    * absolviert 1..1 CodeableConcept "Ja | Nein | Nicht erforderlich"
    * Datum 1..1 date "Datum der letzten Beratung"
  * TelemonitoringSchulung 1..1 BackboneElement "Telemonitoring"
    * absolviert 1..1 CodeableConcept "Ja | Nein | Nicht erforderlich"
    * Datum 1..1 date "Datum der letzten Schulung"

// Datum der Erhebung?
* Lebensqualitaet 0..1 code "Fragebogen Lebensqualität (5-stelliger Code) (jährlich zu erheben ab Einschreibung)"
