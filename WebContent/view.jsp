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
        <%-- <jsp:useBean id="client" class="model.Client" scope="session">
        	<jsp:setProperty name="client" property="*"/>
        </jsp:useBean> --%>
        
		<%-- <% out.println(client.toString()); %> --%>
		
		<%	Client client = (Client) request.getAttribute( "client" );
			out.println(client.toString());
		%>
		
		<%-- <jsp:getProperty name="client" property="Client_ID" />
		<br>
		<jsp:getProperty name="client" property="Name" /> --%>
        </p>
    </body>
</html>