package itcase.dao;

import itcase.user.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class delete_messDao {
	Connection connection = null;
    PreparedStatement pstmt = null;
    PreparedStatement ps = null;
    User user = null;
    private String SQL =""; 
    public User login(int id){    	
    		SQL = "select * from student where id = ?";
            try {
                connection = DoDao.getConnection();
                pstmt = (PreparedStatement) connection.prepareStatement(SQL); 
                pstmt.setInt(1, id);
                ResultSet rSet = (ResultSet) pstmt.executeQuery();
                if(rSet.next()){ 
                	String sql = "delete from student  where id=?";
                	ps = (PreparedStatement) connection.prepareStatement(sql);
        			ps.setInt(1, id);
        			ps.executeUpdate();
                    user = new User();
                    user.setId(rSet.getInt("id"));
                }
                    
                connection.close();
                pstmt.close();  
            }                     
    	catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }finally{
            DoDao.closeConnection(connection);
        }
        return user;
    }
    }
    
  
