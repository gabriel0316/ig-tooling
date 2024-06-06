Profile: AtIpsObservationResults
Parent: Observation
Id: at-ips-observationresults
Title: "AT IPS Observation Results"
Description: "This AT IPS profile for the Observation resource is derived from the general Observation resource in absence of a corresponding profile in the HL7® Austria FHIR® Core implementation guide and also ensures IPS conformity via the IPS profile referenced by the so-called [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile) extension."
* . ^short = "AT IPS Observation Results"
* ^extension[$imposeProfile].valueCanonical = Canonical(ObservationResultsUvIps)
* subject only Reference(AtIpsPatient or Group or Device or Location)
* performer only Reference(AtIpsPractitioner or AtIpsPractitionerRole or AtIpsOrganization or CareTeam or AtIpsPatient or RelatedPerson)
* hasMember only Reference(AtIpsObservationResults or QuestionnaireResponse or MolecularSequence)
