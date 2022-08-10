Instance:  ConditionPOC1.1
InstanceOf: Condition
Usage: #example
* identifier.system = "https://jv.com/fhir/NamingSystem/condition-id"
* identifier.value = "1-1"
* code = https://www.snomed.org#165806002 "Hepatitis B surface antigen positive"
* subject = Reference(Patient/POC1)
* encounter = Reference(Encounter/POC1)
* onsetDateTime = "2022-04-26"

Instance: ConditionPOC1.2
InstanceOf: Condition
Usage: #example
* identifier.system = "https://jv.com/fhir/NamingSystem/condition-id"
* identifier.value = "1-2"
* code = https://www.snomed.org#314706002 "Hepatitis C antibody test positive"
* subject = Reference(Patient/POC1)
* encounter = Reference(Encounter/POC1)
* onsetDateTime = "2022-04-26"

Instance: EncounterPOC1
InstanceOf: Encounter
Usage: #example
* identifier.system = "https://jv.com/fhir/NamingSystem/encounter-id"
* identifier.value = "1"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "Inpatient Encounter"
* diagnosis[0].condition = Reference(Condition/POC1.1)
* diagnosis[+].condition = Reference(Condition/POC1.2)
* subject = Reference(Patient/POC1)
* serviceProvider = Reference(Organization/POC1)
* location.location = Reference(Location/POC1)
* period.start = "2021-12-01T11:35:45-08:00"

Instance: FamilyMemberHistoryPOC1.3
InstanceOf: FamilyMemberHistory
Usage: #example
* identifier.system = "https://jv.com/fhir/NamingSystem/family-member-history-id"
* identifier.value = "1-3"
* status = #completed
* patient = Reference(Patient/POC1)
* relationship = https://terminology.hl7.org/CodeSystem/v3-RoleCode#FAMMEMB "family member"
* condition.code = http://snomed.info/sct#109841003 " Liver cell carcinoma (disorder)"
* condition.code.text = "Liver cell carcinoma (disorder)"
* deceasedBoolean = false

Instance: ObservationPOC1.1
InstanceOf: Observation
Usage: #example
* status = #final
* identifier.system = "https://jv.com/fhir/NamingSystem/observation-id"
* identifier.value = "1-1"
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://loinc.org#11449-6 "Pregnancy status - Reported"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = http://snomed.info/sct#77386006 "Pregnancy(finding)"

Instance: ObservationPOC1.2
InstanceOf: Observation
Usage: #example
* status = #final
* identifier.system = "https://jv.com/fhir/NamingSystem/observation-id"
* identifier.value = "1-2"
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://loinc.org#11638-4 "[#]Births.still living"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueInteger = 5

Instance: ObservationPOC1.3
InstanceOf: Observation
Usage: #example
* status = #final
* identifier.system = "https://jv.com/fhir/NamingSystem/observation-id"
* identifier.value = "1-3"
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code.coding[0] = http://snomed.info/sct#228400001 "Shares needles"
* code.coding[+] = http://snomed.info/sct#226034001 "Injecting drug user"
* subject = Reference(Patient/POC1)
* effectiveDateTime = "2022-04-28"
* valueCodeableConcept = http://snomed.info/sct#373066001 "Yes"