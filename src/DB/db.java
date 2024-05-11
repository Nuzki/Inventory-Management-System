package DB;

import java.sql.*;

public class db {
public static Connection getCon(){
 try{
            final String DB_URL = "jdbc:mysql://localhost:3308/inventory";
            final String USER = "root";
            final String Pass = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(DB_URL, USER, Pass);
            return con;
 }
catch(Exception e){
            System.out.println(e);
            return null;
    }
}
}
