<%@ page import="java.sql.*" %>

<%
String s1,s2,s3,message="fees updated succesfully....";
s1=request.getParameter("u1");
s2=request.getParameter("u2");
s3=request.getParameter("u3");

Connection conn;
    Statement stmt;

try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       int k=stmt.executeUpdate("update student set fees_paid ='"+s2+"',remaing_fees='"+s3+"' where name='"+s1+"';");
   conn.close();  
   out.print(" updated succesfully");
   
%>
<script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "admin.jsp"; // Replace with your desired forward page
  }, 1000); // Replace 2000 with the desired time delay in milliseconds
</script>

<jsp:forward page="admin.jsp"/>

<%
}
catch(Exception e){
     out.print(e);
}

%>