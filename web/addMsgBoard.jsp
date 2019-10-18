<%@ page import="bean.User" %>
<%@ page import="dao.db" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String msg="";
    User user =(User) session.getAttribute("owner");
    String message = request.getParameter("message");
    if(user==null){
        msg = "<script>alert('请先登录');";
        msg += "window.location.href = 'login.jsp';</script>";
        out.print(msg);
        return;
    }

    if(msg==null || msg.equals("")){
        msg = "<script>alert('内容不能为空');";
        msg += "window.history.back();</script>";		//登录失败则后退到登录页面
        out.print(msg);
        return;
    }

    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
    //时间
    String date  = ft.format(new Date());

    ResultSet rs = db.executeQuery("select name from owner where username = '"+user.getUsername()+"'");
    String name = rs.getString("name");
    db.close();

    String sql = "insert into messageBoard VALUES(null,'"+message+"','"+date+"','"+name+"')";
    int row = db.executeUpdate(sql);
    db.close();
    if(row==1){
        //插入成功

    }else{
        msg = "<script>alert('插入数据失败！');";
        msg += "window.history.back();</script>";
        out.print(msg);
        db.close();
        return;
    }


%>