package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
https://www.geeksforgeeks.org/java-database-connectivity-with-mysql/
 */
public class TestSQLSelect {
    public static void main(String arg[])
    {
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/srikai",
                    "root", "UBU_12345678");
 
            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet;
            resultSet = statement.executeQuery(
                "select * from food where name='ยำหมูยอ'");
            String name, spicy;
            while (resultSet.next()) {
                name = resultSet.getString("name");
                spicy = resultSet.getString("spicy").trim();
                System.out.println("Name : " + name
                                   + " Spicy : " + spicy);
            }
            resultSet.close();
            statement.close();
            connection.close();
        }
        catch (Exception exception) {
            System.out.println(exception);
        }
    }
}
