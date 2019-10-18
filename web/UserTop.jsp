<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        .bx {
            height: 80px;
            width: 100%;
            background-color: rgba(64,158,255,0.8);
        }

        .bx .container {
            margin: 0 60px;
            overflow: hidden;
        }

        .bx .container .left {
            width: 401px;
            height: 43px;
            padding-top: 10px;
            color: #FFFFFF;
            font-size: 28px;
            float: left;
        }

        .bx .container .right {
            overflow: hidden;
            width: 500px;
            padding-top: 19px;
            float: right;
        }

        .bx .container .right .l {
            float: left;
        }

        .bx .container .right .r {
            float: right;
        }

        .marquee {
            font-size: 20px;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="bx">
    <div class="container">
        <h3 class="left">后 台 管 理 系 统</h3>
        <div class="right">
            <marquee scrollAmount=6 width=100% class="marquee">亲爱的管理员！欢迎登陆社区管理系统！请按规定进行操做！</marquee>
        </div>
    </div>
</div>
</body>
</html>

