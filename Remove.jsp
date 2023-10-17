<%@ page import="java.sql.*" %>

<%
String s1;
s1=request.getParameter("r1");

Connection conn;
    Statement stmt;

try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       int rs=stmt.executeUpdate("delete from student where name='"+s1+"';");

      
      
%>
<script>
  alert("delete  successful");
  </script>
 

<jsp:forward page="admin.jsp"/>

<%
}
catch(Exception e){
     out.print(e);
}
%>