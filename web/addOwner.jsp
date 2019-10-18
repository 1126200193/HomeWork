<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                
            }
        }
    </script>
</head>
<body>
<form action="" method="post" name="update" target="_self"
      id="update" onsubmit="return CheckForm();">
    <table class="table_style" align="center" >
        <tr class="top_style">
            <td colspan="2" align="center" class="title" >业 主 信 息 录 入 系 统</td>
        </tr>
        <tr>
            <td class="right_style" >
                <label for="password2">业主账号：</label>
            </td>
            <td  align="left">
                <input name="username" type="text" id="number" class="inputStyle" >
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="passowrd">业主密码：</label>
            </td>
            <td  align="left" >
                <input name="password" type="password" id="password"  class="inputStyle" ></td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2"> 业主名字：</label>
            </td>
            <td  align="left" >
                <input name="name" type="text" id="name" class="inputStyle" >
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2"> 业主房间号：</label>
            </td>
            <td  align="left" >
                <input name="roomNumber" type="text" id="roomNumber" class="inputStyle" >
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2"> 业主身份证：</label>
            </td>
            <td  align="left" >
                <input name="idNumber" type="text" id="idNumber" class="inputStyle" >
            </td>
        </tr>
        <tr>
            <td class="right_style">
                <label for="textfield2">电费金额：</label>
            </td>
            <td  align="left" >
                <input name="electricBill" type="text" id="electricBill" class="inputStyle" >
            </td>
        </tr>
        <tr>
            <td class="right_style" >
                <label for="textfield2">水费金额：</label>
            </td>
            <td  align="left" >
                <input name="waterBill" type="text" id="waterBill" class="inputStyle" >
                </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" class="submit" id="button" value="录入" onclick="return checkform();">
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
