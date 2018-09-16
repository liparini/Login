<%-- 
    Document   : index
    Created on : 15/08/2018, 18:00:41
    Author     : carol
--%>

<%
    
String erro = request.getParameter("erro");    
 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="login.jsp" method="POST">
            
            Usuário:
            <input name="usuario" type="text"><br><br>
            Senha:
            <input name="senha" type="password"><br><br>
            <%
                if (erro!=null && erro.equals("1")){
                    out.println("Usuário e/ou senha inválidos</br>");
                }
                    
            %>
            <input value="Acessar" type="submit">
                
        </form>
    </body>
</html>
