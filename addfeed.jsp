<%@ page import="java.sql.*" %>

<%
String s1,s2,s3;
s1=request.getParameter("f1");
s2=request.getParameter("f2");
s3=request.getParameter("f3");

Connection conn;
    Statement stmt;


try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       int k=stmt.executeUpdate("insert into feedback values('"+s1+"','"+s2+"','"+s3+"');");
   conn.close();  

    
 
   
%>
<script>
wait(10000);
alert("feedback added");
</script>

<jsp:forward page="index.html"/>

<%
}
catch(Exception e){
     out.print(e);
}

%>