<%@ page import="java.sql.*" %>

<%
String s1,s2,s3;
s1=request.getParameter("u1");
s2=request.getParameter("u2");
s3=request.getParameter("u3");

Connection conn;
    Statement stmt;
    String message="passward updated succe"


    if(s2.equals(s3))
    {

try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       int k=stmt.executeUpdate("update admin_login set passward ='"+s2+" ' where username='"+s1+"';");
   conn.close();  
   out.print("passwar updated succesfully");
   
%>
<script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "index.html"; // Replace with your desired forward page
  }, 1000); // Replace 2000 with the desired time delay in milliseconds
</script>

<jsp:forward page="adminlogin.html"/>

<%
}
catch(Exception e){
     out.print(e);
}
}
else{
    %>
    <jsp:forward page="forget.html"/>
    <%
}
%>