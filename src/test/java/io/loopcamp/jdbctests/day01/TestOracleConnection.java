package io.loopcamp.jdbctests.day01;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {


        String dbURL = "jdbc:oracle:thin:@54.88.184.90:1521:XE";
        String dbUserName = "hr";
        String dbPassword = "hr";

        //driverManager class has to getConnection() method which is used to create connection
        Connection conn = DriverManager.getConnection(dbURL, dbUserName, dbPassword);

        //Create Statement object from Connection to execute Query
        Statement stmtn = conn.createStatement();

        ResultSet rs = stmtn.executeQuery("SELECT * FROM EMPLOYEES");

        //We use next() method to iterate each row
        //While the next row is not null we can continue iterating

        rs.next(); // This will jump next row

        //get.String(Param) --this method will return the  value of the given ColumName
        String  firstRowRegionName = rs.getString("FIRST_NAME");
        System.out.println(firstRowRegionName);

        rs.next();
        System.out.println(rs.getString("FIRST_NAME"));

        //Instead of using column name we can also use index. Indexes starts from 1
        String lastName = rs.getString(2);
        System.out.println(lastName);


        //How can you loop through the first_name and print al names
        while (rs.next()){
            System.out.println(rs.getString("FIRST_NAME"));
            System.out.println(rs.getString(2));

        }



    }
}