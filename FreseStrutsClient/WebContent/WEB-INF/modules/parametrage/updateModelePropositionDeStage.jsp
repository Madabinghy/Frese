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

<script type="text/javascript">
 
var tableau, ligne, nomChamp, valeurChamp,typeChamp, typeEntier, typeTexte, typeZoneTexte;
 
// ajouter un champ avec son "name" propre;
function plus(){
tableau=document.getElementById('tableau');
ligne=document.createElement('tr');
tableau.appendChild(ligne);

nomChamp=document.createElement('input');
nomChamp.setAttribute('type','text');
nomChamp.setAttribute('name','ch1'+c2.length);
nomChamp.setAttribute('readonly','readonly'); 
nomChamp.setAttribute('value', 'champ'+c2.length/2);
nomChamp.setAttribute('style','border:none');


valeurChamp=document.createElement('input');
valeurChamp.setAttribute('type','text');
valeurChamp.setAttribute('name','ch2'+c2.length);


typeChamp=document.createElement('select');
typeChamp.appendChild(typeEntier);
typeChamp.appendChild(typeTexte);
typeChamp.appendChild(typeZoneTexte);


ligne.appendChild(nomChamp);
ligne.appendChild(valeurChamp);
ligne.appendChild(typeChamp);



typeEntier=document.createElement('option');
typeEntier.setAttribute('name', 'ENTIER');
typeTexte=document.createElement('option');
typeTexte.setAttribute('name', 'TEXTE');
typeZoneTexte=document.createElement('option');
typeZoneTexte.setAttribute('name', 'ZONE DE TEXTE');

typeChamp.setAttribute('name', 'type');




 
document.getElementById('sup').style.display='inline';
}
 
// supprimer le dernier champ;
function moins(){
if(c2.length>0){
	c.removeChild(c2[c2.length-1]);
	c.removeChild(c2[c2.length-1]);
}
if(c2.length==0){document.getElementById('sup').style.display='none'};
}
 
</script>
</head>
<body>
	<s:text name="Modele de Proposition De Stage " /><br/>
	Il y a :<s:property value="%{lesAttributs.size}"/>attributs 
	<br/>
	<s:debug>
	<s:form action="UpdateModelePropositionDeStage" method="post">
	<table id="tableau" border="2" bordercolor="black" style="width: 568px; ">

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
		<tr style="margin-left:100px;width:200px">
			<input type="button" value="ajouter un attribut" onclick="plus()" />
			<input type="button" style="display:none" id="sup" value="supprimer un attribut" onclick="moins()" />
		</tr>
		
		<s:submit value="Valider Modele"></s:submit>
	</table>	
	</s:form>
	</s:debug>
	<a href="index.jsp">retour</a>
</body>
</html>