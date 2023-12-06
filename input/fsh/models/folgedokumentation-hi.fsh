// -------------------------------------------------------------------------------
//  Logical Model folgedokumentation-hi.fsh
// -------------------------------------------------------------------------------
Logical: FolgedokumentationHI
Id: FolgedokumentationHI
Title: "Medizinische Datensätze - Folgedokumentation"
* Symptomatik 1..* BackboneElement "Symptomatik/klinischer Status (mindestens halbjährlich zu erheben)"
* Symptomatik.code 1..1 code "NYHA I | NYHA II | NYHA III | NYHA IV"
* Symptomatik.Datum 1..1 date "Datum"
* Labor 1..* BackboneElement "Laborbefund Serum-Elektrolyte inkl. eGFR (mindestens halbjährlich zu erheben)"
* Labor.Befund 1..1 Attachment "Befunddokument"
* Labor.Datum 1..1 date "Datum"
* LVEF 0..* date "LVEF-Messungen"
* ACE 1..1 code "ACE-Hemmer (Ja | Nein | Kontraindikation | ARB)"
* Zieldosis 1..1 code "Evidenzbasierte Zieldosis (Erreicht | Nicht erreicht | Titrationsphase | Max. tolerierte Dosis erreicht)"
* Lebensqualitaet 1..1 code "Fragebogen Lebensqualität (5-stelliger Code) (jährlich zu erheben ab Einschreibung)"
