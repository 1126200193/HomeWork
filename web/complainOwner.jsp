<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <span class="psize1">业主名字</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主房间号</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">业主身份证</span>
            </td>
            <td  align="center" class="td_style">
                <span class="psize1">投诉内容</span>
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
