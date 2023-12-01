// -------------------------------------------------------------------------------
//  Logical Model patient.fsh
// -------------------------------------------------------------------------------
Logical: PatientHI
Id: Patient
Title: "Patient"
Description:  "Patient/Teilnehmer im Rahmen von IV Herzinsuffizienz."
* Vorname 1..* string "Vorname"
* Zuname 1..* string "Zuname"
* SVNR 1..1 string "SVNR"
* KVTraeger 1..1 string "KV-Träger"
* Adresse 1..* Address "Adresse/politischer Bezirk"
* Telefonnummer 1..* ContactPoint "Telefonnummer"
* Geschlecht 1..1 CodeableConcept "Geschlecht" """This field must contain a recognised valid value for 'administrative gender'.
If different, 'physiological gender' should be communicated elsewhere
Preferred system(s): - Preferred system(s): HL7 Administrative Gender + HL7-at_AdministrativeGender-Ergaenzung"""

Mapping:  PatientToIPSCDA
Source:   Patient
Target:   "https://art-decor.org/art-decor/decor-templates--hl7ips-?section=templates&id=2.16.840.1.113883.10.22.2.1"
* -> "Patient" "This logical model maps to the IPS CDA recordTarget"
* Vorname -> "recordTarget.patientRole.patient.name.given"