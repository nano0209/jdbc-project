package io.loopcamp.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.*;

public class P01_ListOfMap {
    String dbURl = "jdbc:oracle:thin:@54.88.184.90:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    public P01_ListOfMap() throws SQLException {
    }


    @Test
    public void task1() {

        Map< String, Object> row1Map = new HashMap<>();
        row1Map.put ("FIRST_NAME", "Steven");                 // KEY=FIRST_NAME         VALUE=Steven
        row1Map.put ("LAST_NAME", "King");                    // KEY=LAST_NAME         VALUE=King
        row1Map.put ("SALARY", 20000);                        // KEY=SALARY VALUE=24,000
        System.out.println(row1Map);



        Map < String, Object> row2Map = new HashMap<>();
        row2Map.put ("FIRST_NAME", "Neena");                  // KEY=FIRST_NAME         VALUE= Neena
        row2Map.put ("LAST_NAME", "Kochhar");                 // KEY=LAST_NAME         VALUE= Kochhar
        row2Map.put ("SALARY", 17000);                       // KEY=SALARY VALUE= 17,000
          System.out.println(row2Map);

        // After getting each row into a MAP, now we can store EACH MAP into a List


        List<Map <String, Object>> dataList = new ArrayList<>();
        dataList.add(row1Map);
        dataList.add(row2Map);
        System.out.println(dataList);


        //Get me the last name of Steven from list
    System.out.println(dataList.get(0).get("LAST_NAME"));

}

@Test
   public void task2() throws SQLException {
    // DriverManger class has getConnection() method which is used to create connection
    Connection conn = DriverManager.getConnection(dbURl, dbUserName, dbPassword);

    // Create Statement object from Connection to execute Query
    Statement stmtn = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

    // Using this stmnt object to execute the query
    ResultSet rs = stmtn.executeQuery("select FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE ROWNUM < 5");



    //to be able to move through columns
       ResultSetMetaData rsmd = rs.getMetaData();
       rs.next();

    Map <String, Object> row1Map = new HashMap<>();
    row1Map.put (rsmd.getColumnName(1), rs.getString(1));             	    // KEY=FIRST_NAME     	VALUE=Steven
    row1Map.put (rsmd.getColumnName(2), rs.getString(2));             		// KEY=FLAST_NAME     	VALUE=King
    row1Map.put (rsmd.getColumnName(3), rs.getString(3));             	    // KEY=SLARY     	    VALUE=24,000
    System.out.println(row1Map);



    rs.next();
       Map < String, Object> row2Map = new HashMap<>();
       row2Map.put (rsmd.getColumnName(1), rs.getString(2));                  // KEY=FIRST_NAME         VALUE= Neena
       row2Map.put (rsmd.getColumnName(2), rs.getString(2) );                 // KEY=LAST_NAME         VALUE= Kochhar
       row2Map.put (rsmd.getColumnName(3), rs.getString(2));                       // KEY=SALARY VALUE= 17,000
       System.out.println(row2Map);

       List<Map <String, Object>> dataList = new ArrayList<>();
       dataList.add(row1Map);
       dataList.add(row2Map);
    System.out.println(dataList);


    // print each map from datalist
    System.out.println("=======PRINT MAPS FROM THE LIST=======");

    for (Map<String, Object> eachMap : dataList){
        System.out.println(eachMap);
    }

}
@Test
public void task3() throws SQLException {
    // DriverManger class has getConnection() method which is used to create connection
    Connection conn = DriverManager.getConnection(dbURl, dbUserName, dbPassword);

    // Create Statement object from Connection to execute Query
    Statement stmtn = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

    // Using this stmnt object to execute the query
    ResultSet rs = stmtn.executeQuery("select FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE ROWNUM < 5");


    // To be able to move through column
    ResultSetMetaData rsmd = rs.getMetaData();

    List<Map<String, Object>> datalist = new ArrayList<>();

    //1. Iterate through the rows
    while (rs.next()) {

        Map<String, Object> eachRoundMap = new LinkedHashMap<>();

        // Get the columnSize ----> rsmd.getColumnCount()
        for (int i = 1; i <= rsmd.getColumnCount(); i++) {
            eachRoundMap.put(rsmd.getColumnName(i), rs.getString(i));  //First_NAME = STEVEN | LAST_NAME = KING | SALARY = 24000

        }
        datalist.add(eachRoundMap);
    }
    System.out.println(datalist);

    //Print each with Lamda expression
    System.out.println("We are printing each MAP with Lamda expression");
    datalist.forEach(each -> System.out.println(each));

    }

}


