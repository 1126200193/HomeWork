<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>欢迎登陆</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/login.js"></script>
    <script> 
      var error = '<%=request.getParameter("error")%>';
       if(error=='yes'){
         alert("您的账户信息有误!请重新输入！");
         }
    </script>
 <script> 
    function checkform(){
    	//1234
      var username=document.login.username.value;
      var password=document.login.password.value;
      if(username==''){
           alert("您的账号不能为空！");
           document.login.username.focus();
           return false;
      }
      if(password==''){
        alert("您的密码不能为空！");
        document.login.password.focus();
        return false;
      }
     else{
    	 document.login.target="_self ";
    	 document.login.action="loginCheck.jsp";
    	 document.login.submit();
     }
}
  $(document).ready(function(){
     
          var strName = localStorage.getItem('keyName');  
          // 获取指定key本地存储的值
          var strPass = localStorage.getItem('keyPass');
          if(strName){
              $('#User').val(strName);
          }if(strPass){
              $('#pass').val(strPass);
          }
   
      });
       function CheckForm(){
            var strName = $('#User').val();
            var strPass = $('#pass').val();
            localStorage.setItem('keyName',strName);
            // 将value存储到key字段
            if($('#remember').is(':checked')){
                localStorage.setItem('keyPass',strPass);
            }else{
                localStorage.removeItem('keyPass');
            }
       } 
    </script>
      <style type="text/css">
		   body{
			   background-image: url("./image/bj1.jpg");
			   background-size: cover;
			   background-attachment: fixed;
		   }
    #checkCode {
     width:112px;
     height:35px;
     position: absolute;
     left:315px;
     top: 260px;
     color:red;
     font-size:26px;
     font-family:Arial;
     font-style:italic;
     line-height: 35px;
     color:red;
     font-weight:bolder;
     }
    .refresh {
     font-size: 14px;
     color: red;
    }
    </style>
</head>
<body onload="createCode();">
     <div>
     <form  method="post" target="_parent"  name="login"  onsubmit="return CheckForm();">
       <div class="login-box">
       
      	  <div class="left-box1">
      	  	  <div class="imgbox"><img src="image/login_logo.png" alt="" width="100%" height="100%"></div>
      	  	  <h2 class="h2">社区管理系统</h2>
      	  </div>

      	  <div class="center-shu"></div>
      	  <div class="right-box1">
      	     <div class="right-inbox1">
      	     <h2 class="right-h2">用户登录</h2>
      	     <div class="right-text">
      	     	<span>账 号:</span>
      	     	<input type="text" autocomplete="off" placeholder="请输入您的学号/账号" id="username" name="username"/>
      	     </div>

      	     <div class="right-text1">
      	     	<span>密 码:</span>
      	     	<input type="password" autocomplete="off" placeholder="请输入您的密码" id="password" name="password"/>
      	     </div>

      	  	 <div class="right-text1" >
      	      	<span>身 份:</span>
      	     	<select name="type" id="" >
      	     		<option value="Owner" name="type" selected="selected" >业主</option>
      	     		<option value="admin" name="type">管理员</option>
      	     	</select>
      	     </div>
      	     
      	        <div class="right-text1">
             </div>
       
              <div class="right-centerbox1">
      	           <div>  
      	         	<input type="checkbox" class="checkbox1" id="remember" checked="">
      	         	<span  class="span1">记住密码</span>
      	         	</div>
      	           <div>
      	         	<input type="checkbox" class="checkbox2" >
      	         	<span class="span2">自动登录</span>
      	         </div> 
      	     </div> 

      	         <div class="right-onbox1">
      	            <div>
      	              <div class="onbox1">
      	                   <input type="submit" value="登录" class="submit" id="gotoCheck" onclick="return checkform();">
      	              </div>
      	              <div class="onbox2">
      	                 <input type="reset" value="忘记密码" class="submit" onclick="return myfunction();"> 
      	                 <script>
                             function myfunction(){
                                 alert("正在开发中。。。");
                             }
      	                 </script>
      	             </div>
      	            </div>
      	         </div> 
      	         </div>
      	      </div>
      	    </div>
      	    </form>
      	 </div>	
</body>
</html>