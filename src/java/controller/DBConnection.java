package controller;

import java.sql.*;  // Using 'Connection', 'Statement' and 'ResultSet' classes in java.sql package
import model.Food;

public class DBConnection {

    public boolean insertNewFood(Food food) {
        boolean result = false;
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/srikai",
                    "root", "UBU_12345678");

            Statement statement;
            statement = connection.createStatement();

            // สร้าง String nutrient ที่มีค่าสารอาหารต่าง ๆ คั่นด้วย ;
            String nutrient = "";
            int nl = food.getNutrient().length;

            // วนลูปสร้างแค่ food.getNutrient().length ลบ 1 เพื่อไม่ให้มี ; ปิดท้าย String
            for (int i = 0; i < nl - 1; i++) {
                nutrient = nutrient + food.getNutrient()[i] + ";";
            }
            // เพิ่มค่า nutrient ตำแหน่งสุดท้ายเข้าไป
            nutrient = nutrient + food.getNutrient()[nl - 1];

            String query = "INSERT INTO food "
                    + "(name, type, nutrient, spicy, price) "
                    + "VALUES('"
                    + food.getName() + "','"
                    + food.getType() + "','"
                    + nutrient + "','"
                    + food.getSpicy() + "',"
                    + food.getPrice() + ")";
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);	// executeUpdate returns row count ****
            if (i != 0) {
                result = true;
            }
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }

        return result;

    }

    /*
    https://www.geeksforgeeks.org/java-database-connectivity-with-mysql/
     */
    public Food getFood(String name) {
        
        Food food = new Food();        
        Connection connection = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/srikai",
                    "root", "UBU_12345678");

            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet;
            String query = "select * from food where name='" + name + "'";
            System.out.println(">>>>>>>>>> query=" + query);            
            
            resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                food.setName(resultSet.getString("name").trim());
                food.setType(resultSet.getString("type").trim());
                food.setSpicy(resultSet.getString("spicy").trim());
                food.setPrice(resultSet.getInt("price"));
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException exception) {
            System.out.println(exception);
        }
        return food;
    }

}
