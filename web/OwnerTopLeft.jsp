<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/18
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/StudentLeft.css">
    <script src="js/jquery-1.9.1.min.js"></script>
</head>
<body>
<div class="nav">
    <div class="nav-list">
        <div class="nav-tit" id="personal">
            <a href="person_mes.jsp" target="main"> <img
                    src="image/personal-msg.png" style="height: 30px" alt=""> <span>个人信息</span>
            </a>
        </div>
<%--        <div class="personal-list" id="personal-child">
            <ul>
                <li><a href="person_mes.jsp" target="main">个人信息查询</a></li>
                <li><a href="schedule1.jsp" target="main">学生课程查询</a></li>
                <li><a href="words1.jsp" target="main">学生留言查询</a></li>
                <li><a href="1.jsp" target="main">个人处分信息</a></li>
            </ul>
        </div>--%>
        <div class="nav-tit">
            <a href="words.jsp" target="main"> <img
                    src="image/personal-msg.png" alt=""> <span>投诉系统</span>
            </a>
        </div>
        <div class="nav-tit">
            <a href="loginOut.jsp" target="_parent"> <img
                    src="image/modify-password.png" alt=""> <span>退出系统</span>
            </a>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        $('#personal').on('click',function(){
            $('#personal-child').fadeToggle(300);
        });
        let aLi = $('#personal-child li');
        aLi.on('click',function(){
            $(this).addClass('active').siblings('li').removeClass('active');
        })
    });
</script>
</body>
</html>

