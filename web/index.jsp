<%-- 
    Document   : index
    Created on : 30/11/2016, 06:20:12 PM
    Author     : Brenda
--%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme() + "://"
   + request.getServerName() + ":" + request.getServerPort()
   + path + "/";
   
%>

<html>
    <head>
       <base href="<%=basePath%>">

        <title>My JSP</title>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
      <script type="text/javascript">
        function validar(form){
          var form = document.getElementById('formLogin');
          var login = form.login;
          var pass = form.pass;

          if(login.value != '' && pass.value != ''){
           form.submit(); 
           return true;             
          }

          alert('Por favor ingrese usuario o contraseña');
          return false;
         }
      </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="login">
        <div id="flash">
         <%             
          if(session.getAttribute("login") != null && !session.getAttribute("login").equals("")){
           response.sendRedirect("welcome.jsp");
          }     
         %>
        </div>
        <form id="formLogin" action="check" method="POST">
         <table>
          <tr>
           <td colspan="2">Ingreso</td>
          </tr>
          <tr>
           <td>Login:</td>
           <td><input type="text" name="login" /></td>
          </tr>    
          <tr>
           <td>Password:</td>
           <td><input type="password" name="pass" /></td>
          </tr>
          <tr>
           <td><input type="button" value="Ingresar" onclick="validar();"/></td>
          </tr>        
         </table>
        </form>
       </div>  
    </body>
</html>
