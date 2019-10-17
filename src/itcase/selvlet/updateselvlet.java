package itcase.selvlet;

import itcase.dao.updateDao;
import itcase.user.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateServlet")
public class updateselvlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        String number = request.getParameter("number");
        String password = request.getParameter("password");     
        String idcard = request.getParameter("idcard");
        updateDao userDao = new updateDao();
        User user = userDao.login(number,password,idcard);
        if(user != null){
        	 response.sendRedirect("revise.jsp?error=yes");
//        request.getRequestDispatcher("revise.jsp").forward(request, response);      	        
        }else{
         response.sendRedirect("revise.jsp?error=no");
           
                }
        
        }

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}

