<%-- 
    Document   : bemvindo
    Created on : 20/08/2018, 10:55:12
    Author     : carol
--%>

<%@page import="exerc2.Usuario"%>
<%

    Usuario u = null;
    if (session.getAttribute("usuario") != null) {
        u = (Usuario) session.getAttribute("usuario");
    } else {
        response.sendRedirect("index.jsp");
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if (u != null) {%>
        <h1>Seja bem vindo, <%=u.getNome()%></h1>
        <%}%>
    </body>
</html>
