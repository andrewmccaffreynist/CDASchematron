<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE schema [

<!-- Vital Records Death Reporting -->
<!ENTITY ent-2.16.840.1.113883.10.20.26.1 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.1 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.1.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.2 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.2.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.3 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.3.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.7 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.7.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.4 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.4.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.5 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.5.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.13 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.13.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.6 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.6.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.8 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.8.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.9 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.9.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.10 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.10.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.11 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.11.ent'>
<!ENTITY ent-2.16.840.1.113883.10.20.26.1.12 SYSTEM 'https://cda-validation.nist.gov:11080/hitspValidation/schematron/vitalRecordsDeathReporting/templates/2.16.840.1.113883.10.20.26.1.12.ent'>


<!-- Vital Records Death Report Document Body -->

]>

<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:cda="urn:hl7-org:v3">


<!--
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cda="urn:hl7-org:v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    queryBinding="xslt2">
    -->
    
    <!-- 
        To use iso schematron instead of schematron 1.5, change the xmlns attribute from "http://www.ascc.net/xml/schematron" 
        to "http://purl.oclc.org/dsdl/schematron"
    -->
    
    
    <title>cr</title>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <phase id="errors">
        <active pattern="p-2.16.840.1.113883.10.20.26.1-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.1-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.2-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.3-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.7-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.4-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.5-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.13-errors"/>        
        <active pattern="p-2.16.840.1.113883.10.20.26.1.6-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.8-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.9-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.10-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.11-errors"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.12-errors"/>
        
        

    </phase>

    <phase id="warning">
        <active pattern="p-2.16.840.1.113883.10.20.26.1-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.1-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.2-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.3-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.7-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.4-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.5-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.13-warnings"/>        
        <active pattern="p-2.16.840.1.113883.10.20.26.1.6-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.8-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.9-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.10-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.11-warnings"/>
        <active pattern="p-2.16.840.1.113883.10.20.26.1.12-warnings"/>
        
        
    </phase>

    &ent-2.16.840.1.113883.10.20.26.1;
    &ent-2.16.840.1.113883.10.20.26.1.1;
    &ent-2.16.840.1.113883.10.20.26.1.2;
    &ent-2.16.840.1.113883.10.20.26.1.3;
    &ent-2.16.840.1.113883.10.20.26.1.7;
    &ent-2.16.840.1.113883.10.20.26.1.4;
    &ent-2.16.840.1.113883.10.20.26.1.5;
    &ent-2.16.840.1.113883.10.20.26.1.13;    
    &ent-2.16.840.1.113883.10.20.26.1.6;
    &ent-2.16.840.1.113883.10.20.26.1.8;
    &ent-2.16.840.1.113883.10.20.26.1.9;
    &ent-2.16.840.1.113883.10.20.26.1.10;
    &ent-2.16.840.1.113883.10.20.26.1.11;
    &ent-2.16.840.1.113883.10.20.26.1.12;
    
</schema>
