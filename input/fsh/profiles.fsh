Instance: POC1.1
InstanceOf: Condition
Usage: #example
* identifier.system = "https://jv.com/fhir/NamingSystem/condition-id"
* identifier.value = "1-1"
* code = https://www.snomed.org#165806002 "Hepatitis B surface antigen positive"
* subject = Reference(Patient/POC1)
* encounter = Reference(Encounter/POC1)
* onsetDateTime = "2022-04-26"