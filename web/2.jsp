<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/26
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import="com.sun.org.apache.bcel.internal.generic.Select" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      String number = request.getParameter("number");
      String name = request.getParameter("name");
      String mafeTime = request.getParameter("mafeTime");
      String price = request.getParameter("price");
      Connection con;
      Statement sql;
      ResultSet rs;
      try{
          Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e){}
      try{
          String uri = "jdbc:mysql://localhost:3306/Test";
          String user = "root";
          String password = "123456";
          con = DriverManager.getConnection(uri, user, password);
          String ts = "update  test set  name = ?,mafeTime = ?,price = ?where number= ?";
          PreparedStatement ps = con.prepareStatement(ts);
          ps.setString(1, name);
          ps.setString(2, mafeTime);
          ps.setString(3, price);
          ps.setString(4, number);
          ps.executeUpdate();
          ps.close();
          con.close();
          response.sendRedirect("1.jsp");
      }
      catch (SQLException e){
          out.print(e);
      }
    %>
</body>
</html>
