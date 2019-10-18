<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.db" %>
<%@ page import="bean.*" %>

<%
    request.setCharacterEncoding("UTF-8");
    User user = new User();
    String msg="";
    String username = request.getParameter("username");
    String password  = request.getParameter("password");
    String type = request.getParameter("type");

    if(username==null || password ==null || type==null){
        msg = "<script>alert('提交信息不能为空');";		//弹出警告框
        msg += "window.history.back();</script>";		//网页后退
        out.print(msg);
        return;
    }
    if(username.trim().equals("") || password.trim().equals("") || type.trim().equals("")){
        msg = "<script>alert('请输入用户名！');";		//弹出警告框
        msg += "window.history.back();</script>";		//网页后退
        out.print(msg);
        return;
    }

    if (type.equals("admin")){
        String sql = "select * from admin where username='" +username+"'" +" and password='"+password+"'";
        System.out.println(sql);
        ResultSet rs;
        rs = db.executeQuery(sql);
        if (rs == null) {
            db.close();
            msg = "数据库操作发生错误！";
            out.print(msg);
            return;
        }

        if (rs.next() == false)	{							//没有查询到符合条件的记录
            msg = "<script>alert('登录失败！您的用户名或者密码有误。');";
            msg += "window.history.back();</script>";		//登录失败则后退到登录页面
            out.print(msg);
            db.close();
            return;
        }
        user.setId(rs.getInt("id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setType(type);
        db.close();
        session.setAttribute("admin", user);
        response.sendRedirect("User.jsp");
    }else{
        String sql = "select * from owner where username='" +username+"'" +" and password='"+password+"'";
        System.out.println(sql);
        ResultSet rs;
        rs = db.executeQuery(sql);
        if (rs == null) {
            db.close();
            msg = "数据库操作发生错误！";
            out.print(msg);
            return;
        }

        if (rs.next() == false)	{							//没有查询到符合条件的记录
            msg = "<script>alert('登录失败！您的用户名或者密码有误。');";
            msg += "window.history.back();</script>";		//登录失败则后退到登录页面
            out.print(msg);
            db.close();
            return;
        }
        user.setId(rs.getInt("id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setType(type);
        db.close();
        session.setAttribute("owner", user);
        response.sendRedirect("Owner.jsp");
    }


%>
