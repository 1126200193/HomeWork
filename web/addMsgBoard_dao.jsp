<%@ page import="bean.User" %>
<%@ page import="dao.db" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String msg="";
    User user =(User) session.getAttribute("owner");
    String message = request.getParameter("message");
    if(user==null){
        msg = "<script>alert('请先登录');";
        msg += "window.location.href = 'login.jsp';</script>";
        out.print(msg);
        return;
    }

    if(message==null || message.equals("")){
        msg = "<script>alert('内容不能为空');";
        msg += "window.history.back();</script>";
        out.print(msg);
        return;
    }

    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
    //时间
    String date  = ft.format(new Date());

    ResultSet rs = db.executeQuery("select name from owner where username = '"+user.getUsername()+"'");
    rs.next();
    String name = rs.getString("name");
    db.close();

    String sql = "insert into messageBoard VALUES(null,'"+message+"','"+date+"','"+name+"')";
    int row = db.executeUpdate(sql);
    db.close();
    if(row==1){
        //插入成功
        msg = "<script>alert('提交成功！');";
        msg += "window.history.back();</script>";
        out.print(msg);
    }else{
        msg = "<script>alert('插入数据失败！');";
        msg += "window.history.back();</script>";
        out.print(msg);
        return;
    }


%>