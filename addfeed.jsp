<%@ page import="java.sql.*" %>

<%
String s1,s2,s3;
s1=request.getParameter("f1");
s2=request.getParameter("f2");
s3=request.getParameter("f3");

Connection conn;
    Statement stmt;
String message="feedback added succesfully...."

try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       int k=stmt.executeUpdate("insert into feedback values('"+s1+"','"+s2+"','"+s3+"');");
   conn.close();  

    
 
   
%>
<script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "index.html"; // Replace with your desired forward page
  }, 1000); // Replace 2000 with the desired time delay in milliseconds
</script>


<%
}
catch(Exception e){
     out.print(e);
}

%>