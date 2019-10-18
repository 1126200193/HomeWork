<%@ page import="bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user =(User) session.getAttribute("admin");
    String msg="";
    if(user==null){
        msg = "<script>alert('请先登录');";
        msg += "window.location.href = 'login.jsp';</script>";
        out.print(msg);
        return;
    }
%>
