<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Struts</title>
</head>
<body>
	<h1><a href="<s:url action="hello"/>">Hello Struts</a></h1>
	
	<form action="<s:url action="hello"/>">
		<input type="text" name="name" placeholder="Your name">
		<input type="submit">
	</form>
	<s:text name="formulaire with tags struts 2"/>
	<s:form action="hello">
		<s:textfield name="messageStore.message" placeholder="Your name" label="your name"/>
		<s:submit value="say hello"/>
	</s:form>
	
	<div style="margin: auto; width: 70%; border: thin;">
	<s:form action="hello">
		<h2>Formulaire</h2>
		<s:textfield name="personne.firstName" label="First Name"/>
		<s:textfield name="personne.lastName" label="Last Name"/>
		<s:textfield name="personne.email" label="E-mail"/>
		<s:select list="{'Paris', 'Lyon', 'Strasbourg'}" name="personne.city" label="City" headerKey="-1" headerValue="--- Select your city ---"/>
		<s:radio list="{'Male', 'Female', 'Other'}" name="personne.gender" label="Gender"/>
		<s:checkboxlist list="{'Football', 'Rugby', 'Handball'}" label="Sport" name="personne.sports"/>
		
		<s:submit value="afficher personne"/>
	</s:form>
	</div>
	
	

</body>
</html>