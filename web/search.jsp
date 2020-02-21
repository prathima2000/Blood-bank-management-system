<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ Page contentType="text/html" language="java" import="java.sql.*"%>
<html>
    <body>
        
  <%
String bloodselect=request.getParameter("bloodselect");


Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://D:\\bloodgroutdb.accdb");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(" select stock from bloodgroupdb where group=bloodselct");
String stock=rs.getString(1);
if(stock=="0")
{
    out.println("<h4>BLood group not found</h4>");
    
}
    else
{
    out.println("<h4>bloodgroup is found</h4>");
}
    
%>
    </body>
</html>

