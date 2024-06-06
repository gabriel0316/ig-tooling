Profile: AtIpsObservationResultsPathology
Parent: AtIpsObservationResults
Id: at-ips-observationresultspathology
Title: "AT IPS Observation Results Pathology"
Description: "This AT IPS profile for the Observation resource is derived from the \"AtIpsObservationResults\" profile and also ensures IPS conformity via the IPS profile referenced by the so-called [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile) extension."
* . ^short = "AT IPS Observation Results Pathology"
* ^extension[$imposeProfile].valueCanonical = Canonical(ObservationResultsPathologyUvIps)
* subject only Reference(AtIpsPatient)
* specimen only Reference(AtIpsSpecimen)
* hasMember only Reference(AtIpsObservationResultsPathology or AtIpsObservationResults)
