<%@ page import="dao.db" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String roomNumber = request.getParameter("roomNumber");
    String idNumber = request.getParameter("idNumber");
    String electricBill = request.getParameter("electricBill");
    String waterBill = request.getParameter("waterBill");

    String sql = "update owner set username='"+username
            +"' ,password='"+password+"' , roomNumber="+roomNumber+",name='"+name+"',waterBill="+waterBill
            +",electricBill="+electricBill+",idNumber='"+idNumber+"' where id="+id;
    int i = db.executeUpdate(sql);
    System.out.println(sql);
    db.close();
    response.sendRedirect("User.jsp");

%>
