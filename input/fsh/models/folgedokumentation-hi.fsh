// -------------------------------------------------------------------------------
//  Logical Model folgedokumentation-hi.fsh
// -------------------------------------------------------------------------------
Logical: FolgedokumentationHI
Id: FolgedokumentationHI
Title: "Medizinische Datensätze - Folgedokumentation"
* Symptomatik 1..* BackboneElement "Symptomatik/klinischer Status (mindestens halbjährlich zu erheben)"
* Symptomatik.code 1..1 CodeableConcept "NYHA I | NYHA II | NYHA III | NYHA IV"
* Symptomatik.Datum 1..1 date "Datum"
* Labor 1..* BackboneElement "Laborbefund Serum-Elektrolyte inkl. eGFR (mindestens halbjährlich zu erheben)"
* Labor.Befund 1..1 Attachment "Befunddokument"
* Labor.Datum 1..1 date "Datum"
* LVEF 0..* date "LVEF-Messungen"

// Unklar ob es sich bei den folgenden beiden um ein oder zwei Felder handeln sollte?
* ACE 1..1 BackboneElement "ACE-Hemmer"
* ACE.ACE 1..1 CodeableConcept "ACE-Hemmer (Ja | Nein | Kontraindikation | ARB)"
* ACE.Zieldosis 1..1 CodeableConcept "Evidenzbasierte Zieldosis (Erreicht | Nicht erreicht | Titrationsphase | Max. tolerierte Dosis erreicht)"

// Unklar ob es sich bei den folgenden beiden um ein oder zwei Felder handeln sollte?
* Betablocker 1..1 BackboneElement "Betablocker"
* Betablocker.ACE 1..1 CodeableConcept "Betablocker (Ja | Nein | Kontraindikation)"
* Betablocker.Zieldosis 1..1 CodeableConcept "Evidenzbasierte Zieldosis (Erreicht | Nicht erreicht | Titrationsphase | Max. tolerierte Dosis erreicht)"

* Antikoagulation 1..1 CodeableConcept "Orale Antikoagulantien (Ja | Nein | Kontraindikation)"

* Schulung 1..1 BackboneElement "Schulung zur Überwachung des Gewichts"
* Schulung.absolviert 1..1 CodeableConcept "Ja | Nein | Nicht erforderlich"
* Schulung.Datum 0..1 date "Datum der Schulung"

* Beratung 1..1 BackboneElement "Beratung über Impfungen (Grippe, Pneumokokken)"
* Beratung.absolviert 1..1 CodeableConcept "Ja | Nein | Nicht erforderlich"
* Beratung.Datum 0..1 date "Datum der Beratung"

// Datum der Erhebung?
* Lebensqualitaet 1..1 code "Fragebogen Lebensqualität (5-stelliger Code) (jährlich zu erheben ab Einschreibung)"
