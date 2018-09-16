<%-- 
    Document   : login
    Created on : 20/08/2018, 10:54:49
    Author     : carol
--%>
<%@page import="exerc2.Usuario"%>
<%
   String usuario = request.getParameter("usuario");   
    String senha = request.getParameter("senha");   
    
    if(usuario.equals("madona")&& senha.equals("senha")){
        
        Usuario u = new Usuario();
        u.setNome("Madona");
        
        session.setAttribute("usuario", u);
          
        response.sendRedirect("bemvindo.jsp");
    }else{
        response.sendRedirect("index.jsp?erro=1");
    }

%>

