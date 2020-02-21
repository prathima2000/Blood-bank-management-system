/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author USER
 */
import java.sql.*;

public class blood {
  public static void main(String[]args)throws Exception
  {
     // String url="";
      //String uname="root";
      //String pass="";
      //Class.forName("com.mysql.jdbc.Driver");
      //Connection con=DriverManager.getConnection(url,uname,pass);
 Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://D:\\examDB.accdb");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM examDB");
String dbans1=rs.getString(1);
System.out.println("the value" + dbans1);
      
      
              
      
  }
}
