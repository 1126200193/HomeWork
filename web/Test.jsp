<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/23
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
    <style>
        .PriceStyle{
            width: 60px;
        }
        table{
            font-family: verdana,arial,sans-serif;
            color:#333333;
            border-width: 1px;
            border-color: #a9c6c9;
            border-collapse: collapse;
        }
        .th_style{
            width: 250px;
            height: 45px;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
        }
        .td_style{
            width: 250px;
            text-align: center;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
            font-size: 14px;
        }
    </style>
</head>
<body>
<%
    String number=request.getParameter("number");
    String  minPrice = request.getParameter("minPrice");
    String  maxPrice = request.getParameter("maxPrice");
    Connection con;
    Statement sql;
    ResultSet rs;
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }
    catch (Exception e){}
    try{
        String uri="jdbc:mysql://localhost:3306/Test";
        String user = "root";
        String password = "123456";
        con = DriverManager.getConnection(uri,user,password);
        sql = con.createStatement();
        if(minPrice==null&&maxPrice==null){
            rs = sql.executeQuery("select * from test where number = '"+number+"'");
        }else{
            rs = sql.executeQuery("select * from test where price between '"+minPrice+"' and '"+maxPrice+"'");
        }

%>
<form action="">
    <p>根据产品号查询：</p>
    <span>输入产品号：</span>
    <input type="text" name="number">
    <input type="submit" value="提交">
</form>
<br>
<form action="Test.jsp">
    <p>根据价格查询：</p>
    <span>价格在：</span>
    <input type="text" class="PriceStyle" name="minPrice">
    <span>至</span>
    <input type="text" class="PriceStyle" name="maxPrice">
    <span>之间</span>
    <input type="submit" value="提交">
</form>
<div>
    <%
        if(number!=null){
            out.print("根据产品号"+number+"查询到记录：");
        }else if(minPrice!=null&&maxPrice!=null){
            out.print("价格在"+minPrice+"至"+maxPrice+"之间d的记录：");
        }
    %>
    <table>
        <tr>
            <th class="th_style">number</th>
            <th class="th_style">name</th>
            <th class="th_style">mafaTime</th>
            <th class="th_style">price</th>
        </tr>
        <%
            while(rs.next()){
        %>
        <tr>
            <td class="td_style"><%=rs.getString("number")%></td>
            <td class="td_style"><%=rs.getString("name")%></td>
            <td class="td_style"><%=rs.getString("mafeTime")%></td>
            <td class="td_style"><%=rs.getString("price")%></td>
        </tr>
        <%
                }
                con.close();
            }
            catch (SQLException e){
                out.print(e);
            }
        %>
    </table>
</div>
</body>
</html>
