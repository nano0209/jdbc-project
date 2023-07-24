package io.loopcamp.jdbctests.day02;

import io.loopcamp.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtilPractice {
    @Test
    public void task1(){
        DB_Util.createConnection();

        //run query ----->
        DB_Util.runQuery("SElect FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES");

        //Get all data from DB as List of Map
        List<Map <String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        //print each
             for (Map <String, String> eachRow : allRowAsListOfMap){
                 System.out.println(eachRow);

        }

             //get me the Steven
        System.out.println(DB_Util.getFirstRowFirstColumn());

             // 2 column and 2 row
        System.out.println(DB_Util.getCellValue(2,1));

             //close the connection
        DB_Util.destroy();


    }


}
