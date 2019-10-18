<%@ page import="bean.User" %>
<%@ page import="dao.db" %>
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

    String username = request.getParameter("username");
    String passowrd = request.getParameter("password");
    String name = request.getParameter("name");
    String roomNumber = request.getParameter("roomNumber");
    String idNumber = request.getParameter("idNumber");
    String electricBill = request.getParameter("electricBill");
    String waterBill = request.getParameter("waterBill");

    String sql = "INSERT INTO owner VALUES(null,'"+username+"','"+name+"',"+roomNumber+","+idNumber+","+waterBill+","+electricBill+",'"+passowrd+"')";
    int i = db.executeUpdate(sql);
    db.close();
    if(i==1){
        //插入成功
        response.sendRedirect("User.jsp");
    }else{
        msg = "<script>alert('插入数据失败！');";
        msg += "window.history.back();</script>";
        out.print(msg);
        return;
    }

%>
