package io.loopcamp.jdbctests.day01;

import java.sql.*;

public class P02_MetadataTest {
    public static void main(String[] args) throws SQLException {
        String dbURL = "jdbc:oracle:thin:@54.88.184.90:1521:XE";
        String dbUserName = "hr";
        String dbPassword = "hr";

        //driverManager class has to getConnection() method which is used to create connection
        Connection conn = DriverManager.getConnection(dbURL, dbUserName, dbPassword);

        //Create Statement object from Connection to execute Query
        Statement stmtn = conn.createStatement();

        ResultSet rs = stmtn.executeQuery("SELECT * FROM EMPLOYEES");

        /**
         * Database Meta Data
         */
        DatabaseMetaData dbMetaData = conn.getMetaData();
        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseMajorVersion());


        /**
         * ResultSet Meta Data
         */
        // getMetaDate()will return ResulSetMetaData object
        ResultSetMetaData rsmd = rs.getMetaData();

        // how many columns we have
        System.out.println("Total column in EMPLOYEES table" + rsmd.getColumnCount());


        //1st column name
        System.out.println("First Column Name:" + rsmd.getColumnName(1));//indexes starts from 1 in SQL


        //The following method will return size of characters that can be put
        System.out.println("Size of character for" + rsmd.getColumnName(2) + "is" + rsmd.getColumnDisplaySize(2));


        //print all column name
        for(int i = 1; i<= rsmd.getColumnCount(); i++){
            System.out.println("#:"+ i +": Column Name: " + rsmd.getColumnName(1));

        }

        //Since we know how can jump through rows and jump through column, can we print all data dynamically
        while (rs.next()) {
           for (int i = 1; i <= rsmd.getColumnCount(); i++){
               System.out.println(rsmd.getColumnName(i) + rs.getString(i) + "");
           }
            System.out.println();
        }




    }

}
