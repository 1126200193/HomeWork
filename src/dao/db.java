package dao;


import java.sql.*;

public class db {
    private static Connection	conn	= null; 	// 数据库连接
    private static Statement 	stmt 	= null;  	// 接口实例
    private static ResultSet 	rs 		= null;    	// 记录集

    //直接连接Microsoft SQL Server数据库。需先将sqljdbc4.jar在添加到库WEB-INF/lib中
    //private String connString = "jdbc:sqlserver://127.0.0.1:1433; DatabaseName=Student"; 	//服务器和数据库名
    //private String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";         		//驱动据库 ;useUnicode=true; characterEncoding=UTF-8
    //private String userName = "sa";    			// 数据库用户名的初始值
    //private String password = "123456"; 			// 数据库密码的初始值

    //如果是连接MySQL：jdbc:mysql://localhost:3306/mysqlDBName，com.mysql.jdbc.Driver，添加库mysql-connector-java-5.1.21-bin.jar
    private static String connString	= "jdbc:mysql://localhost:3306/sq?useSSL=false";
    private static String driver 		= "com.mysql.jdbc.Driver";

    private static String userName = "root";    	// 数据库用户名的初始值
    private static String password = "root123456"; 	// 数据库密码的初始值

    private static Connection getConnecion() { 		// 创建数据库连接
        Connection myConn = null;

        try {
            Class.forName(driver); 				// 加载驱动程序
            myConn = DriverManager.getConnection(connString, userName, password); 	// 连接数据库

        } catch (Exception e) {
            System.err.println("创建数据库连接失败: " + e.getMessage());
        }

        return myConn;
    }

    /**
     * 设置数据库连接字符串、用户名、密码
     */
    public static void setConnStringUser(String connStringArg, String userNameArg, String passwordArg) {
        connString	= connStringArg;   				// 设置数据库连接字符串
        userName 	= userNameArg; 					// 用户名
        password 	= passwordArg; 					// 密码
    }

    /**
     * 设置数据库连接字符（用户名、密码采用初始值）
     */
    public static void setConnString(String connStringArg) {
        connString = connStringArg;   				//设置数据库连接字符串
    }

    /**
     * 查询数据
     */
    public static ResultSet executeQuery(String sql) {
        rs = null;

        try {
            if (conn == null || conn.isClosed()) {	// 如果尚未创建连接
                conn = getConnecion(); 				// 连接数据库
                stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                        ResultSet.CONCUR_READ_ONLY);// 创建接口stmt，数据游标能灵活前后移动，只读
                //stmt = conn.createStatement();    // 创建接口stmt，以默认方式
            }

            rs = stmt.executeQuery(sql);        	// 执行查询

        } catch (SQLException e) {
            close();								// 出错则关闭连接
            System.err.println("查询数据失败: " + e.getMessage());
        }

        return rs; 									//返回记录集
    }


    /**
     * 插入、更新或删除数据
     */
    public static int executeUpdate(String sql) {
        int i = 0;

        try {
            if (conn == null || conn.isClosed()) {	// 如果尚未创建连接
                conn = getConnecion(); 				// 连接数据库
                stmt = conn.createStatement();		// 创建接口stmt
            }

            i = stmt.executeUpdate(sql); 			// 执行数据插入、更新或删除，得到被影响的记录数

        } catch (SQLException e) {
            close();								// 出错则关闭连接
            System.err.println("数据插入、更新或删除失败: " + e.getMessage());
        }

        return i; 									//返回被影响的记录数，如果没有记录被插入、更新或删除则默认为0
    }

    /**
     * 关闭数据库连接
     */
    public static void close() {
        if (rs != null) {							//注意关闭顺序
            try {
                if (rs.isClosed() == false)			//如果尚未关闭
                    rs.close();
            } catch (SQLException e) {
                System.err.println("关闭数据库连接rs失败: " + e.getMessage());
            }
        }
        if (stmt != null) {
            try {
                if (stmt.isClosed() == false)
                    stmt.close();
            } catch (SQLException e) {
                System.err.println("关闭数据库连接stmt失败: " + e.getMessage());
            }
        }
        if (conn != null) {
            try {
                if (conn.isClosed() == false)
                    conn.close();
            } catch (SQLException e) {
                System.err.println("关闭数据库连接conn失败: " + e.getMessage());
            }
        }
    }
}
