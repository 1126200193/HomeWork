<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@ page import="dao.db"%>
<%@ page import="bean.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>业主个人信息页面</title>
    <style>
        .table_style{
            width:450px;
            height:500px;
            border:1px solid rgba(64,158,255,0.8);
        }
        .top_style{
            background-color: rgba(64,158,255,0.8);
            color:#ffffff;
        }
        .submit {
            width: 55px;
            height: 40px;
            text-align: center;
            background: #409EFF;
            font-size: 18px;
            color: #fff;
            cursor: pointer;
            margin: 0 40px;
            border: none;
            border-radius: 5px;
        }
        .title{
            bgcolor:#CAE1FF;
            font-size: 24px;
        }
        .inputStyle{
            width: 280px;
            height: 26px;
            border-radius: 5px;
            line-height: 24px;
            font-size: 16px;
        }
        .right_style{
            width: 120px;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    User user = (User) session.getAttribute("owner") ;

    String sql = "select * from owner where username='" +user.getUsername()+"'";
    ResultSet rs;
    rs = db.executeQuery(sql);
    rs.next();
%>
<form action="" method="post" name="OwnerMess" target="_self" id="OwnerMess">
    <table class="table_style" align="center" >
        <tr class="top_style">
            <td colspan="2" align="center" class="title" >用 户 信 息</td>
        </tr>
        <tr>
            <td class="right_style" >
                <label for="password2">账号：</label>
            </td>
            <td  align="left">
                <input name="username" type="text" id="number" class="inputStyle" value="<%=rs.getString("username")%>" >
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2"> 名字：</label>
            </td>
            <td  align="left" >
                <input name="name" type="text" id="name" class="inputStyle" value="<%=rs.getString("name")%>">
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2"> 房间号：</label>
            </td>
            <td  align="left" >
                <input name="roomNumber" type="text" id="roomNumber" class="inputStyle" value="<%=rs.getString("roomNumber")%>">
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2">身份证：</label>
            </td>
            <td  align="left" >
                <input name="idNumber" type="text" id="idNumber" class="inputStyle" value="<%=rs.getString("idNumber")%>" >
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2">电费金额：</label>
            </td>
            <td  align="left" >
                <input name="electricBill" type="text" id="electricBill" class="inputStyle" value="<%=rs.getString("waterBill")%>" >
            </td>
        </tr>
        <tr>
            <td class="right_style" >
                <label for="textfield2">水费金额：</label>
            </td>
            <td  align="left" >
                <input name="waterBill" type="text" id="waterBill" class="inputStyle" value="<%=rs.getString("electricBill")%>">
            </td>
        </tr>
        <tr>
    <%
        db.close();
    %>


            <td colspan="2" align="center"
                style="border: none">
                <div>
                    <div id="time" style="font-size: 16px;">
                        <script>
                            document.getElementById('time').innerHTML='当前时间：&nbsp;'+new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());
                            setInterval("document.getElementById('time').innerHTML='当前时间：&nbsp;'+new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
                        </script>
                    </div>
                </div>
                </div>
            </td>
        </tr>
    </table>
</form>


</body>
</html>
