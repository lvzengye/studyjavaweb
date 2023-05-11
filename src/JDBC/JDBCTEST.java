package JDBC;

import java.sql.*;

public class JDBCTEST {
    public static void main(String[] args) throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/jdbc?serverTimezone=GMT%2B8";
            String username = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement stmt = conn.createStatement();
            String sql = "select*from user";
            ResultSet rs = stmt.executeQuery(sql);
            System.out.println("if|name");
            while (rs.next()) {

                int id = rs.getInt("id");
                String name = rs.getString("name");
                System.out.println(id + name);
            }
        }catch (ClassNotFoundException s){
            s.printStackTrace();
        }

    }

}
