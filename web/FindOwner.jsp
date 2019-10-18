<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎光临学生信息中心</title>
</head>
<script>
    var error = '<%=request.getParameter("error")%>';
    if(error=='yes'){
        alert("修改成功！");
    }
    else if(error=='del'){
        alert("删除成功！");
    }
</script>
<style>
    span {
        font-size: 20px;
    }

    select {
        width: 200px;
        height: 35px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        margin: auto 5px;
    }
    tr {
        text-align: center;
    }
    .td_style{
        background-color:rgba(64,158,255,0.8);
        height:25px;
        color:#ffffff;
    }
    .input1 {
        width: 200px;
        height: 35px;
        line-height: 35px;
        font-size: 16px;
        border-radius: 5px;
        border: none;
    }
    .submit {
        width: 110px;
        height: 100%;
        border: 1px solid #4fadeb;
        line-height: 30px;
        text-align: center;
        background: #4fadeb;
        font-size: 18px;
        color: #fff;
        cursor: pointer;
    }
    .submit1 {
        width: 90px;
        height: 50%;
        border: 1px solid #4fadeb;
        line-height: 30px;
        text-align: center;
        background: #4fadeb;
        font-size: 18px color:#fff;
        cursor: pointer;
    }
    .a {
        width: 50px;
        height: 50px;
        color: black;
        text-decoration: none;
        font-size: 20px;
    }
    .mes_td_style{
        height: 35px;
    }
    img{
        width: 45px;
        height: 30px;
    }
</style>
<body>
<form action="Stu_message1.jsp" id="form1" name="form1" method="post"
      target="_self">
    <table width="100%" border="2" bordercolor="#99ccff" cellspacing="2" cellpadding="2" align="center">
        <tr>
            <td  align="center" class="td_style"><span
                    class="psize1" name="select">请选择查询的类型：</span>
                <select name="select" id="select">
                <option value="xuehao" selected>学号</option>
                <option value="xingming">姓名</option>
                <option value="xingbie">性别</option>
            </select>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">请输入查找的关键字：</span>
                   <input name="query" type="text" class="input1" maxlength="18" />
            </td>
            <td  align="center" class="td_style">
                <input type="submit" name="Submit" value="查询" class="submit">
            </td>
        </tr>
    </table>
    <table width="100%" border="2" bordercolor="#99ccff" cellspacing="4"
           cellpadding="4" align="center">
        <tr>
            <td  align="center" class="td_style" style="width:50px;">
                <span class="psize1">序号</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主账号</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主密码</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主名字</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主房间号</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主身份证</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">电费金额</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">水费金额</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1" style="width:180px;">修改</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">删除</span>
            </td>
        </tr>
        <tr>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span></span></td>
            <td class="mes_td_style"><span>
                  <a href="revise2.jsp">
                     <img src="image/bianji.png">
                  </a>
            </td>
            <td>
                <span class="psize2">
                    <a href="delete_messServlet">
                        <img src="image/del.jpg">
                    </a>
                </span>
            </td>
        </tr>
    </table>
</form>

</body>
</html>

