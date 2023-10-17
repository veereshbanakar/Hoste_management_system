
<%@ page import="java.sql.*" %>


<%

String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
s1=request.getParameter("as1");
s2=request.getParameter("as2");
s3=request.getParameter("as3");
s4=request.getParameter("as4");
s5=request.getParameter("as5");
s6=request.getParameter("as6");
s7=request.getParameter("as7");
s8=request.getParameter("as8");
s9=request.getParameter("as9");
s10=request.getParameter("as10");

String message = "Student added succesfully...";
Connection conn;
    Statement stmt;


try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
             stmt=conn.createStatement();
       int k=stmt.executeUpdate("insert into student values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
   conn.close();  

 
    %>
<script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "admin.jsp"; // Replace with your desired forward page
  }, 2000); // Replace 2000 with the desired time delay in milliseconds
</script>



 <%
}
catch(Exception e){
     out.print(e);
}

%>