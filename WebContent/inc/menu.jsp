<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
/* Général ------------------------------------------------------------------------------------- */

body, p, legend, label, input {
    font: normal 8pt verdana, helvetica, sans-serif;
}

/* Forms --------------------------------------------------------------------------------------- */
fieldset {
    padding: 10px;
    border: 1px #0568CD solid;
    margin: 10px;
}

legend {
    font-weight: bold;
    color: #0568CD;
}

form label {
    float: left;
    width: 200px;
    margin: 3px 0px 0px 0px;
}

form input {
    margin: 3px 3px 0px 0px;
    border: 1px #999 solid;
}

form input.sansLabel {
    margin-left: 200px;
}

/* Styles et couleurs -------------------------------------------------------------------------- */
.requis {
    color: #c00;
}

.erreur {
    color: #900;
}

.succes {
    color: #090;
}

.info {
    font-style: italic;
    color: #E8A22B;
}

/* Blocs constituants -------------------------------------------------------------------------- */
div#menu{
	border: 1px solid #0568CD;
	padding: 10px;
	margin: 10px;
}
div#corps{
	margin: 10px;
}
</style>
<div id="menu">
    <p><a href="<c:url value="/creerClient.jsp"/>">Créer un nouveau client</a></p>
    <p><a href="<c:url value="/creerCommande.jsp"/>">Créer une nouvelle commande</a></p>
</div>