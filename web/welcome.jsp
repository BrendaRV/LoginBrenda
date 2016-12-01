<%-- 
    Document   : welcome
    Created on : 30/11/2016, 06:49:17 PM
    Author     : Brenda
--%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <title>WELCOME</title>

        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
    </head>
    <body>
        <h1>Hello!</h1>
        <div id="page">
            <div id="header">
             Bienvenido
             <%=session.getAttribute("login")%>
             <%
              if (session.getAttribute("login") != null
                && !session.getAttribute("login").equals("")) {

              } else {
               response.sendRedirect("login.jsp");
              }
             %>
             <a href="logout">Logout</a>

            </div>
            <div id="main">
             <div id="left">
              Pagina Left
             </div>
             <div id="center">
              Pagina center
             </div>
            </div>
            <div id="bottom">
             Pie de pagina
            </div>
           </div>
    </body>
</html>
