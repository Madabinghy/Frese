<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue sur le site de gestion des stages</title>
</head>
<body>
	<h3>Choisisser un modele a parametrer</h3>
    <s:form action="ParametrerModelePropositionStage" method="post">
        <s:submit value="Propositions"></s:submit>
    </s:form>
     <s:form action="ParametrerModeleCompteRendu" method="post">
        <s:submit value="Compte Rendu"></s:submit>
    </s:form>   
</body>
</html>