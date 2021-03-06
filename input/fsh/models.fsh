Logical: ViralHepatitisModel
Title: "Viral Hepatitis Logical Model"
Description: "Viral Hepatitis Information model"


* ConsultDate 1..1 dateTime "Consult Date (MM/DD/YYYY)"
* PatientCode 1..1 Identifier "Patient Code" "Patient Identifier"
* TestingFacilityName 1..1 Reference "Testing Facility Name" "The location where the encounter takes place."
* ContactNo 0..* ContactPoint "Contact Number" "Contact number of the Patient"
* FacilityAddress 1..1 Address "Facility Address" "Physical location where the encounter takes place"
* ClientType 1..1 code "Client Type" "Walk-in, Referrakm, and In-patient" 
* TestedPositiveFor 0..1 BackboneElement "If patient tested positive for Hepatitis B and/or Hepatitis C"
  * TestedPositiveForHepatitisB 0..1 BackboneElement "If patient tested positive for Hepatitis B"
  * TestedPositiveForHepatitisC 0..1 BackboneElement "If patient tested positive for Hepatitis C"
* DateofBaselineHBsAgTest 0..1 dateTime "Date of Baseline HBsAgTest (MM/DD/YYYY)"
* DateofBaselineAnti-HCVTest 0..1 dateTime "Date of Baseline Anti-HCV test (MM/DD/YYYY)"
* FirstName 0..* HumanName "First Name" "First Name of the Patient"
* MiddleName 0..* HumanName "Middle Name" "Middle Name of the Patient"
* LastName 1..1 HumanName "Last Name" "Last Name of the Patient"
* Suffix 0..* HumanName "Suffix" "Suffix of the Patient"
* UniqueIdentifierCode 1..1 id "Unique Identifier Code for the patient" "First two letters of mother's name, First two letters of father's name, birth order, and Birthdate (MM/FF/BO/MM/DD/YYYY)"
  * FirstTwoLetterOfMothersName 1..1 id "First two letters of mother's name" "Format - AA/XX/XX/XX/XX/XXXX"
  * FirstTwoLetterOfFathersName 1..1 id "First two letters of father's name" "Format - XX/AA/XX/XX/XX/XXXX"
  * BirthOrder 1..1 integer "Birth Order" "Format - XX/XX/##/XX/XX/XXXX"
  * BirthDate 1..1 date "Birth Date" "Format - XX/XX/XX/MM/DD/YYYY"
* SexAssignedAtBirth 0..1 code "Sex Assigned at Birth"
* SelfIdentity 0..1 code "Patient Self Identity"
* PregnancyStatus 0..* code "If female, is she pregnant?"
  * PregnancyStatus 0..* CodeableConcept "If female, is she pregnant?"
* NumberOfChildren 0..* integer "Number of Children"
* CivilStatus 0..* CodeableConcept "Civil Status"
* Nationality 0..* CodeableConcept "Nationality"
* AgeInYears 1..1 Age "Age of Patient in Years"
* PhilHealthNo 1..1 Identifier "PhilHealth Number of the Patient"
* CurrentAddress 1..* Address "Current Address of the Patient"
  * CurrentAddressCityMunicipality 1..* Address "Current City/Municipality Address of the Patient"
  * CurrentAddressProvince 1..* Address "Current Province Address of the Patient"
  * CurrentAddressRegion 1..* Address "Current Region Address of the Patient"
* PermanentAddress 1..* Address "Permanent Address of the Patient"
  * PermanentAddressCityMunicipality 1..* Address "Permanent City/Municipality Address of the Patient"
  * PermanentAddressProvince 1..* Address "Permanent Province Address of the Patient"
  * PermanentAddressRegion 1..* Address "Permanent Region Address of the Patient"