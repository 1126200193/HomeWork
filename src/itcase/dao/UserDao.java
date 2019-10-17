package itcase.dao;

import itcase.user.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
	Connection connection = null;
    PreparedStatement pstmt = null;
    User user = null;
    private String SQL =""; 
    public User login(String number, String password, String select ){
    	if(select.equals("Stu"))
    		SQL = "select * from student where number = ? and password = ?";
    	else if(select.equals("Admin"))
            SQL = "select * from admin where number = ? and password = ?";
            try {
                connection = DoDao.getConnection();
                pstmt = (PreparedStatement) connection.prepareStatement(SQL);
                //�������˼���û����������SQL�����ʺŴ�
                pstmt.setString(1, number);
                pstmt.setString(2, password);
                ResultSet rSet = (ResultSet) pstmt.executeQuery();//�õ����ݿ�Ĳ�ѯ���,һ�����ݼ�
                //�жϽ�����Ƿ���Ч
                if(rSet.next()){             	
                    user = new User();
                    user.setNumber(rSet.getString("number"));
                    user.setPassword(rSet.getString("password"));
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
    
  
