<%@ page import="bean.User" %>
<%@ page import="dao.db" %><%--
  Created by IntelliJ IDEA.
  User: afa
  Date: 2019/10/20
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");

    User user =(User) session.getAttribute("admin");
    String msg="";

    if(user==null){
        msg = "<script>alert('请先登录');";
        msg += "window.location.href = 'login.jsp';</script>";
        out.print(msg);
        return;
    }
    String id = request.getParameter("id");
    if(id==null || id.equals("")){
        msg = "<script>alert('非法操作');";
        msg += "window.location.href = 'loginOut.jsp';</script>";
        out.print(msg);
        return;
    }
    String sql = "delete from messageBoard where id ="+id;
    int i = db.executeUpdate(sql);
    db.close();
    if(i!=1){
        msg = "<script>alert('删除失败');";
        msg += "window.history.back();</script>";
        out.print(msg);
        return;
    }else {
        response.sendRedirect("complainOwner.jsp");
    }

%>
