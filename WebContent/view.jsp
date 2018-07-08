<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@page import="model.Client"%>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
    <body>
        <p>Ceci est une page générée depuis une JSP.</p>
        <p>
        
        <c:import url="document.xml" varReader="monReader">
   		<%-- Parse le contenu du fichier XML monDocument.xml dans une variable nommée 'doc' --%>
   		<x:parse var="doc" doc="${monReader}" ></x:parse>
   			<x:forEach var="element" select="$doc/news/article/auteur" >
   				<x:out select="$element"></x:out>
   			</x:forEach>
		</c:import>
        <%-- <jsp:useBean id="client" class="model.Client" scope="session">
        	<jsp:setProperty name="client" property="*"/>
        </jsp:useBean> --%>
        
		<%-- <% out.println(client.toString()); %> --%>
		
		<%--	Client client = (Client) request.getAttribute( "client" );
			out.println(client.toString());
		--%>
		<%-- <jsp:getProperty name="client" property="Client_ID" />
		<br>
		<jsp:getProperty name="client" property="Name" /> --%>
        </p>
    </body>
</html>