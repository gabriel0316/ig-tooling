// -------------------------------------------------------------------------------
//  Logical Model patient-hi.fsh
// -------------------------------------------------------------------------------
Logical: PatientHI
Id: PatientHI
Title: "Patienten-Stammdaten"
Description:  "Patient/Teilnehmer basierend dem Entwurf der Datenspezifikation des modularen Rahmenkonzepts für Österreich für das Disease-Management bei chronischer Herzinsuffizienz."
* Vorname 1..* string "Vorname"
* Zuname 1..* string "Zuname"
* Geburtsjahr 1..1 date "Geburtsjahr"
* SVNR 1..1 string "SVNR"
* KVTraeger 1..1 string "KV-Träger"
* Adresse 1..* Address "Adresse/politischer Bezirk"
* Telefonnummer 1..* ContactPoint "Telefonnummer"
* Geschlecht 1..1 BackboneElement "Geschlecht"
* Geschlecht.gender 1..1 CodeableConcept "Administratives Geschlecht"
* Geschlecht.gender from http://hl7.org/fhir/ValueSet/administrative-gender
* Geschlecht.genderExtension 0..1 CodeableConcept "Erweiterung für administratives Geschlecht für den Fall das Geschlecht.gender = other"
* Geschlecht.genderExtension from https://termgit.elga.gv.at/ValueSet/hl7-at-administrativegender-fhir-extension

// gibt es nur eine Schulung?
// Könnte es sein, dass Schulungen wiederholt werden?
* Schulung 1..1 BackboneElement "DM(P)-spezifische Patientenschulung"
* Schulung.absolviert 1..1 boolean "absolviert"
* Schulung.Datum 1..1 date "Datum der Schulung"

* Einverstaendnis 1..1 Attachment "Patienten-Einverständniserklärung"

// Kann sich ein Patient nach einem Austritt erneut einschreiben?
* Einschreibung 1..1 date "DM(P)-Einschreibedatum"
* Austritt 0..1 BackboneElement "Austritt aus DM(P)"
* Austritt.Datum 0..1 date "Austrittsdatum"
* Austritt.Grund 0..1 CodeableConcept "Austrittsgrund auszufüllen, wenn DMP-Austrittsdatum vorhanden (Eingabefehler | verstorben | durch Patient beendet | durch Einrichtung beendet | sonstiges)"

// Was ist eine Anlaufstelle?
* Anlaufstelle 1..1 ContactPoint "Aktuelle primäre Anlaufstelle (Bezeichnung, Kontakt)"

* Betreuungsnetzwerk 1..1 BackboneElement "Betreuungsnetzwerk"
* Betreuungsnetzwerk.Einbindung 1..1 boolean "Einbindung An- bzw. Zugehörige"
* Betreuungsnetzwerk.Pflegehilfe 1..1 boolean "Pflege/Heimhilfe"
// Sind in dem Textfeld detaillierte, strukturierte Daten erforderlicht?
* Betreuungsnetzwerk.Kontakt 0..1 string "Name und Kontaktmöglichkeit"

* Versorgungsnetzwerk 1..* BackboneElement "Versorgungsnetzwerk"
* Versorgungsnetzwerk.Kontakt 1..1 ContactPoint "Bezeichnung, Kontakt, freies Textfeld"
// Bezeichnung der Kontakttypen aus PDF nicht ganz klar
* Versorgungsnetzwerk.Kontakttyp 1..1 CodeableConcept "Team Primärversorgung/hausärztliches Team | Niedergelassene Fachärzte für innere Medizin/Kardiologie | HI-Spezialist/Spezialambulanz | Krankenhaus/stationär | Rehabilitation"

Mapping:  PatientToIPSCDA
Source:   PatientHI
Target:   "https://art-decor.org/art-decor/decor-templates--hl7ips-?section=templates&id=2.16.840.1.113883.10.22.2.1"
* -> "PatientHI" "This logical model maps to the IPS CDA recordTarget"
* Vorname -> "recordTarget.patientRole.patient.name.given"