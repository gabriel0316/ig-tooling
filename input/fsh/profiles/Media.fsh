Profile: AtIpsMediaObservation
Parent: Media
Id: at-ips-MediaObservation
Title: "AT IPS MediaObservation"
Description: "This AT IPS profile for the Media resource is derived from the general Media resource in absence of a corresponding profile in the HL7® Austria FHIR® Core implementation guide and also ensures IPS conformity via the IPS profile referenced by the so-called [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile) extension."
* . ^short = "AT IPS MediaObservation"
* ^extension[$imposeProfile].valueCanonical = Canonical(MediaObservationUvIps)
* subject only Reference(AtIpsPatient)
