<%@ page import="java.sql.*" %>

<%
String s1,s2,s3;
s1=request.getParameter("u1");
s2=request.getParameter("u2");
s3=request.getParameter("u3");

Connection conn;
    Statement stmt;


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
wait(10000);
alert("hello veeresh");
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