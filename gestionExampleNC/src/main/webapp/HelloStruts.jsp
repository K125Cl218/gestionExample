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
	<h2><s:property value="messageStore.message"/></h2>
	<h2>Hello <s:property value="name"/> !</h2>
	<h2>Personne saisie :</h2>
	<span><s:property value="personne"/></span>
</body>
</html>