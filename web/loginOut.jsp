<%--
  Created by IntelliJ IDEA.
  User: afa
  Date: 2019/10/18
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("admin");
    session.removeAttribute("owner");
    response.sendRedirect("login.jsp");
%>