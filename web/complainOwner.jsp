<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎光临学生信息中心</title>
</head>
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
                <span>序号</span>
            </td>
            <td  align="center" class="td_style" style="width: 180px;">
                <span>业主姓名</span>
            </td>
            <td  align="center" class="td_style">
                <span>投诉内容</span>
            </td>
            <td  align="center" class="td_style" style="width: 180px;">
                <span>投诉时间</span>
            </td>
            <td  align="center" class="td_style" style="width:80px;">
                <span>操作</span>
            </td>
        </tr>
        <tr>
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
