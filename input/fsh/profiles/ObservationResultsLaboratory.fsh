Profile: AtIpsObservationResultsLaboratory
Parent: AtIpsObservationResults
Id: at-ips-observationresultslaboratory
Title: "AT IPS Observation Results Laboratory"
Description: "This AT IPS profile for the Observation resource is derived from the \"AtIpsObservationResults\" profile and also ensures IPS conformity via the IPS profile referenced by the so-called [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile) extension."
* . ^short = "AT IPS Observation Results Laboratory"
* ^extension[$imposeProfile].valueCanonical = Canonical(ObservationResultsLaboratoryUvIps)
* specimen only Reference(AtIpsSpecimen)
* hasMember only Reference(AtIpsObservationResultsLaboratory or AtIpsObservationResults)
