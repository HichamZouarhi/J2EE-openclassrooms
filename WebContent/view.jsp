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
            <% 
            Client client = (Client) request.getAttribute("client");
            /* out.println( attribut ); */

            out.println(client.getName());
            out.println(client.getClient_ID());
            %>
        </p>
    </body>
</html>