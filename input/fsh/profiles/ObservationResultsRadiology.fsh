Profile: AtIpsObservationResultsRadiology
Parent: AtIpsObservationResults
Id: at-ips-observationresultsradiology
Title: "AT IPS Observation Results Radiology"
Description: "This AT IPS profile for the Observation resource is derived from the \"AtIpsObservationResults\" profile and also ensures IPS conformity via the IPS profile referenced by the so-called [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile) extension."
* . ^short = "AT IPS Observation Results Radiology"
* ^extension[$imposeProfile].valueCanonical = Canonical(ObservationResultsRadiologyUvIps)
* partOf only Reference(AtIpsImagingStudy)
* subject only Reference(AtIpsPatient)
* hasMember only Reference(AtIpsObservationResultsRadiology or AtIpsObservationResults)
