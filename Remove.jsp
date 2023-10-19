<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
String s1,message;
s1=request.getParameter("r1");

Connection conn;
    Statement stmt;
    message=s1+"  studentt details deleted succesfully";
  
try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
         

       int rs=stmt.executeUpdate("delete from student where name='"+s1+"';");

      
      
%>
<script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "admin.jsp"; // Replace with your desired forward page
  }, 1000); // Replace 2000 with the desired time delay in milliseconds
</script>




<%
}
catch(Exception e){
     out.print(e);
}
%>