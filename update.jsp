<%@ page import="java.sql.*" %>

<%
String s1,s2,s3;
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

<jsp:forward page="admin.jsp"/>

<%
}
catch(Exception e){
     out.print(e);
}

%>