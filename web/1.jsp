<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/26
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            font-family: verdana,arial,sans-serif;
            color:#333333;
            border-width: 1px;
            border-color: #a9c6c9;
            border-collapse: collapse;
        }
        .th_style{
            width: 220px;
            height: 45px;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
        }
        .td_style{
            width: 220px;
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
        Connection con;
        Statement sql;
        ResultSet rs;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (Exception e){ }
        try {
            String uri = "jdbc:mysql://localhost:3306/Test";
            String user = "root";
            String password = "123456";
            con = DriverManager.getConnection(uri, user, password);
            sql = con.createStatement();
            rs = sql.executeQuery("select * from test");

    %>
    <form action="2.jsp">
        <table>
            <tr>
                <th class="th_style">输入产品号：</th>
                <th class="th_style">
                    <input type="text" name="number">
                </th>
            </tr>
            <tr>
                <th class="th_style">输入新的名称：</th>
                <th class="th_style">
                    <input type="text" name="name">
                </th>
            </tr>
            <tr>
                <th class="th_style">输入新的生厂日期：</th>
                <th class="th_style">
                    <input type="date" name="mafeTime">
                </th>
            </tr>
            <tr>
                <th class="th_style">输入新的生产价格：</th>
                <th class="th_style">
                    <input type="text" name="price" >
                </th>
            </tr>
            <tr>
                <th class="th_style">提交</th>
                <th class="th_style">
                    <input type="submit" name="submit">
                </th>
            </tr>
        </table>
    </form>
        <br>
        <table>
            <span>Product表的数据：</span>
            <tr>
                <th class="th_style">number</th>
                <th class="th_style">name</th>
                <th class="th_style">mafeTime</th>
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
</body>
</html>
