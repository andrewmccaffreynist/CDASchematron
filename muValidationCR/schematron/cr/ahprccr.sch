<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE schema [

<!-- Ambulatory Healthcare Provider Reporting to Central Cancer Registries -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.7.3.1.1.14.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.7.3.1.1.14.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.1.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.1.1.ent'>
<!--
<!ENTITY ent-2.16.840.1.113883.10.20.3 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/2.16.840.1.113883.10.20.3.IHE.PCC.ent'>
-->

<!-- Procedures - Narrative Radiation Oncology Section -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.7.3.1.3.14.2 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.7.3.1.3.14.2.ent'>

<!-- Coded Social History -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.3.16.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.3.16.1-QRPH.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.13.4 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.13.4.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.13 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.13.ent'>

<!-- Insurance Providers --> 
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.17 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.17.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.18 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.18.ent'>

<!-- Cancer Diagnosis -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.7.3.1.3.14.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.7.3.1.3.14.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.3.6 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.3.6.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.5.2 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.5.2.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.5.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.5.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.5.3 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.5.3.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.6 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.6.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.1.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.1.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.2 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.2.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.5 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.5.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.1.2 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.1.2.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.7.3.1.4.14.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.7.3.1.4.14.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.7.3.1.4.14.2 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.7.3.1.4.14.2.ent'>

<!-- Active Pandrewlems -->
<!-- Already imported above -->

<!-- Progress Note -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.1.13.2.7 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.1.13.2.7.ent'>

<!-- Coded Results -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.3.28 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.3.28.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.4 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.4.ent'>

<!-- Current Meds -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.3.19 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.3.19.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.7 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.7.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.7.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.7.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.7.2 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.7.2.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.4.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.4.1.ent'>

<!-- Medications Administered -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.3.21 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.3.21.ent'>

<!-- Care Plan -->
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.3.31 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.3.31.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.12 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.12.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.7.3 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.7.3.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.3.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.3.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.19 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.19.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.4.1 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.4.1.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.4 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.4.ent'>
<!ENTITY ent-1.3.6.1.4.1.19376.1.5.3.1.4.14 SYSTEM 'file:///sites/tomcat_andrew/tomcat_cda/webapps/muValidationCR/schematron/cr/templates/1.3.6.1.4.1.19376.1.5.3.1.4.14.ent'>

]>


<schema xmlns="http://www.ascc.net/xml/schematron" xmlns:cda="urn:hl7-org:v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    queryBinding="xslt2">
    
    
    <!-- 
        To use iso schematron instead of schematron 1.5, change the xmlns attribute from "http://www.ascc.net/xml/schematron" 
        to "http://purl.oclc.org/dsdl/schematron"
    -->
    
    
    <title>cr</title>
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
    <phase id="errors">
	<active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.1.14.1-errors"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.1-errors"/>
<!--
        <active pattern="p-2.16.840.1.113883.10.20.3-errors"/>
-->
        <active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.3.14.2-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.16.1-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.13.4-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.13-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.17-errors"/>        
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.18-errors"/>  
	<active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.3.14.1-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.6-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5.2-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5.1-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5.3-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.6-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.1-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.1.1-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.2-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.1.2-errors"/> 	
        <active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.4.14.1-errors"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.4.14.2-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.13.2.7-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.28-errors"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.19-errors"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7-errors"/>       
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7.1-errors"/>       
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7.2-errors"/>       
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4.1-errors"/> 	
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.21-errors"/>   	
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.31-errors"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.12-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7.3-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.3.1-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.19-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4.1-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4-errors"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.14-errors"/>

    </phase>

    <phase id="warning">
        <active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.1.14.1-warnings"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.1-warnings"/>
<!--
        <active pattern="p-2.16.840.1.113883.10.20.3-warnings"/>
-->
        <active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.3.14.2-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.16.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.13.4-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.13-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.17-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.18-warnings"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.3.14.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.6-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5.2-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5.3-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.6-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.1-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.1.1-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.2-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.5-warnings"/>        
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.1.2-warnings"/> 	
        <active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.4.14.1-warnings"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.7.3.1.4.14.2-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.13.2.7-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.28-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.19-warnings"/> 
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7-warnings"/>       
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7.1-warnings"/>       
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7.2-warnings"/>       
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.21-warnings"/> 
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.3.31-warnings"/>
	<active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.12-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.7.3-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.3.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.19-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4.1-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.4-warnings"/>
        <active pattern="p-1.3.6.1.4.1.19376.1.5.3.1.4.14-warnings"/>
	
    </phase>

    &ent-1.3.6.1.4.1.19376.1.7.3.1.1.14.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.1.1;    
<!--
    &ent-2.16.840.1.113883.10.20.3;    
-->
    &ent-1.3.6.1.4.1.19376.1.7.3.1.3.14.2;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.3.16.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.13.4;
   
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.13;

    &ent-1.3.6.1.4.1.19376.1.5.3.1.1.5.3.7;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.17;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.18;
    &ent-1.3.6.1.4.1.19376.1.7.3.1.3.14.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.3.6;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.5.2;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.5.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.5.3;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.6;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.1;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.1.1;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.2;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.5;
    
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.1.2;
    &ent-1.3.6.1.4.1.19376.1.7.3.1.4.14.1;
    &ent-1.3.6.1.4.1.19376.1.7.3.1.4.14.2;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.1.13.2.7;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.3.28;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.4;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.3.19;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.7;
    
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.7.1;
   
   &ent-1.3.6.1.4.1.19376.1.5.3.1.4.7.2;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.4.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.3.21;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.3.31;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.1.20.3.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.12;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.7.3;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.3.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.19;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.4.1;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.4;
    &ent-1.3.6.1.4.1.19376.1.5.3.1.4.14;
    

</schema>
