<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ Page contentType="text/html" language="java" import="java.sql.*"%>
<html>
    <body>
        
  <%
String name=request.getParameter("Name");
String Email=request.getParameter("Email");
String address=request.getParameter(" address");
String phonenumber=request.getParameter("phone number");
String username=request.getParameter("username");
String psw=request.getParameter("psw");
String age=request.getParameter("age");

String gender=request.getParameter("gender");
String state=request.getParameter("state");

Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://D:\\reciptordb.accdb");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("INSERT INTO organisationdb VALUES(name,age,gender,Email,address,state,phonenumber); ");
Connection con1=DriverManager.getConnection("jdbc:ucanaccess://D:\\userdb.accdb");
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("INSERT INTO userdb VALUES(username,psw); ");

%>
    </body>
</html>

