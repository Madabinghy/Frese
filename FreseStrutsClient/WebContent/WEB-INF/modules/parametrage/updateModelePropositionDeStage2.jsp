<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Creation-Modification du modele de proposition de stage</title>
<sx:head/>

</head>
<body>
	<s:text name="Modele de Proposition De Stage " /><br/>
	Il y a :<s:property value="%{lesAttributs.size}"/>attributs 
	<br/>
	<s:debug>
	<s:form action="UpdateModelePropositionDeStage" method="post">
	<table border="2" bordercolor="black" style="width: 568px; ">

		<s:iterator value="lesAttributs">
			<tr>
				<td>
					<s:if test="%{type=='INT'||type=='TEXT'}">
						<s:text name="label"></s:text>
					</s:if>
					<s:elseif test="DATE">
						<s:date name="label"/>
					</s:elseif>
					<s:else>
						<s:textarea name="label"></s:textarea>
					</s:else>
						<s:property value="description" />
				</td>
			</tr>

		</s:iterator>
		<tr id="dynamicAdd_0">
		</tr>
		
		<s:submit value="Valider Modele"></s:submit>
	</table>	
	</s:form>
	</s:debug>
	<a href="index.jsp">retour</a>
</body>
</html>