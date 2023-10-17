<%@ page import="java.sql.*" %>

<%
String s1,s2;
s1=request.getParameter("u1");
s2=request.getParameter("u2");
Connection conn;
    Statement stmt;

try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery("select * from admin_login where username='"+s1+"' and passward='"+s2+"' ");

      
      rs.next();
%>
<script>
  alert("login successful");
  </script>

<jsp:forward page="admin.jsp"/>

<%
}
catch(Exception e){
     out.print(e);
}
%>