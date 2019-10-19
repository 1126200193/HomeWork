<%@ page import="bean.User" %>
<%@ page import="bean.Owner" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="dao.db" %>
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
    String sql = "select * from owner where id="+id;
    ResultSet rs = db.executeQuery(sql);
    rs.next();
    Owner owner = new Owner();
    owner.setId(rs.getInt("id"));
    owner.setUsername(rs.getString("username"));
    owner.setName(rs.getString("name"));
    owner.setRoomNumber(rs.getInt("roomNumber"));
    owner.setIdNumber(rs.getString("idNumber"));
    owner.setWaterBill(rs.getFloat("waterBill"));
    owner.setElectricBill(rs.getFloat("electricBill"));
    owner.setPassword(rs.getString("password"));
    rs.close();
    db.close();


%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>业主信息录入</title>
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
    <script>
        function CheckForm(){
            var username=document.update.username.value;
            var password=document.update.password.value;
            var name=document.update.name.value;
            var roomNumber=document.update.roomNumber.value;
            var idNumber=document.update.idNumber.value;
            if(username==''){
                alert("账号不能为空！");
                document.update.username.focus();
                return false;
            }else if(password ==''){
                alert("密码不能为空！");
                document.update.password.focus();
                return false;
            }else  if(name==''){
                alert("名字不能为空！");
                document.update.name.focus();
                return false;
            }else if(roomNumber==''){
                alert("房间号不能为空！");
                document.update.roomNumber.focus();
                return false;
            }else if(idNumber==''){
                alert("身份证号不能为空！");
                document.update.idNumber.focus();
                return false;
            }else{
                document.update.target="_self ";
                document.update.action="update2.jsp?id=<%=id%>";
                document.update.submit();
            }
        }
    </script>
</head>
<body>
<form action="" method="post" name="update" target="_self"
id="update" onsubmit="return CheckForm();">
<table class="table_style" align="center" >
<tr class="top_style">
    <td colspan="2" align="center" class="title" >业 主 信 息 修 改 系 统</td>
</tr>
<tr>
    <td class="right_style" >
        <label for="password2">业主账号：</label>
    </td>
    <td  align="left">
        <input name="username" type="text" id="number" class="inputStyle" value="<%=owner.getUsername()%>" >
    </td>
</tr>
<tr>
    <td class="right_style">
        <label for="passowrd">业主密码：</label>
    </td>
    <td  align="left" >
        <input name="password" type="text" id="password"  class="inputStyle"  value="<%=owner.getPassword()%>"></td>
</tr>
<tr>
    <td class="right_style">
        <label for="textfield2"> 业主名字：</label>
    </td>
    <td  align="left" >
        <input name="name" type="text" id="name" class="inputStyle" value="<%=owner.getName()%>" >
    </td>
</tr>
<tr>
    <td class="right_style">
        <label for="textfield2"> 业主房间号：</label>
    </td>
    <td  align="left" >
        <input name="roomNumber" type="text" id="roomNumber" class="inputStyle" value="<%=owner.getRoomNumber()%>" >
    </td>
</tr>
<tr>
    <td class="right_style">
        <label for="textfield2"> 业主身份证：</label>
    </td>
    <td  align="left" >
        <input name="idNumber" type="text" id="idNumber" class="inputStyle" value="<%=owner.getIdNumber()%>">
    </td>
</tr>
<tr>
    <td class="right_style">
        <label for="textfield2">电费金额：</label>
    </td>
    <td  align="left" >
        <input name="electricBill" type="text" id="electricBill" class="inputStyle"  value="<%=owner.getElectricBill()%>">
    </td>
</tr>
<tr>
    <td class="right_style" >
        <label for="textfield2">水费金额：</label>
    </td>
    <td  align="left" >
        <input name="waterBill" type="text" id="waterBill" class="inputStyle" value="<%=owner.getWaterBill()%>">
    </td>
</tr>
<tr>
    <td colspan="2" align="center">
        <input type="submit" class="submit" id="button" value="修改" onclick="return checkform();">
        <input type="reset" class="submit" id="button2" value="重置">
    </td>
</tr>
<tr>

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
</title>
</head>
<body>

</body>
</html>
