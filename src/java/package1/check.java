package package1;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Brenda
 */
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class check extends HttpServlet {

 public void doPost(HttpServletRequest req, HttpServletResponse res)
   throws ServletException, IOException {

  String login = req.getParameter("login");
  String pass = req.getParameter("pass");

  HashMap users = new HashMap();
  users.put("user1", "1234");
  users.put("user2", "1234");
  users.put("admin", "admin");

  if (users.containsKey(login)) {
   String tmpPass = (String) users.get(login);

   if (pass.equals(tmpPass)) {
    HttpSession session = req.getSession(true);
    session.setAttribute("login", login);
    res.sendRedirect("./welcome.jsp");
   } else {
    res.sendRedirect("./login.jsp");
   }

  } else {
   res.sendRedirect("./login.jsp");
  }

 }

}
