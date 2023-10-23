
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>warden Home</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="adminhome">
    <ul id="navbar">
        <h1 style="color:black;float:left;">Hostel Management System</h1>
      <marquee behavior=alternate direction="" style="width: 350px; margin-left:15%;">   <h1 style="color:black">warden page</h1>
        </marquee> <br>
        <li id="home" style="clear:left;"><a href="admin.jsp">Home</a></li>
        <li><a href="#newstudent">Add Student</a></li>
        <li><a href="#viewfeed">View Feedback</a></li>
          <li><a href="#search">View Student</a></li>
          <li><a href="#update"> Update Fees </a> </li>
          <li><a href="#remove"> Remove student</a> </li>
         <li><a href="index.html">Log Out</a></li>
        
    </ul>

    <div id="newstudent">
        <section style="background-color:rgb(163, 116, 29);font-size:30px; overflow:hidden;" >
        <p >Add New Student</p></section><br>
        <form action="addstudent.jsp">
            <label >Student Name:</label>
            <input type="text" required name="as1"> <br><br>
            <label >Mobile Num:</label>
            <input type="text" name="as2" required pattern="[9876][0-9]{9}">
             <br><br>
             <label >Fees Paid:</label>
            <input type="text" name="as3" required >
             <br><br>
             <label >Remaining Fee:</label>
             <input type="text" name="as4" required >
              <br><br>
              <label >Student Photo:<label>
                <input type="file" name="as5" required accept=".jpg" >     <br><br>
                 <label >Date of Addmission:</label>
                 <input type="date" name="as6"> <br><br>
                  <label >Year Of Pursuing:</label>
                 <input type="text" name="as7" required >
                  <br><br>
                  <label >Branch:</label>
                  <input type="text" name="as8" required >
                   <br><br>
                   <label >Assign Room Num:</label>
                   <input type="text" name="as9" required >
                    <br><br>
                    <label > Address of the student:</label>
                    <textarea name="as10" id="" cols="30" rows="3" placeholder="enter the address here"></textarea><br><br>
                 <input type="submit" style="   width: 120px;color:red;font-size:20px;"><br> <br>


        </form>

    </div>
<%@ page import="java.sql.*" %>
    <div id="viewfeed" style="background-color:lightyellow; margin:10% 20%; font-size:25px; padding:0px 0px 10px 0px; align-items: center;">
    <center> <h2>View Feedback</h2>
    <table    border=5 style=" border-collapse:collapse; width= 500px; positions:static; padding:20%; ">
    <tr>
    <th>Student Name</th>
    <th>details</th>
    <th>date</th>
    </tr>

<%
    Connection conn;
    Statement stmt;
    try{
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
         stmt=conn.createStatement();
         ResultSet r=stmt.executeQuery("select * from feedback;");
        
         while( r.next())
         {
             out.println("<tr>");
             out.println("<td>");
             out.println(r.getString(1));
             out.println("</td><td>");
             out.println(r.getString(2));
             out.println("</td><td>");
             out.println(r.getString(3));
             out.println("</td>");
             out.println("</tr>");


              
         }

  
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
        </table>
    </div>

<div id="search" style="

      background-color:lightyellow;
      font-size:25px;
      margin:10% 20%;
      text-align:center;

   

">
   <center> <h2> view student </h2>
       <form action="student.jsp">
            <label >Student Name:</label>
            <input type="text" required name="scarch"> <br><br>
            <input type="submit" value="view Details" style="font-size:20px; color:red;">
            <br> <br>
           </form>
    
</div>


<div>
<section id="update" 

style="background-color:lightyellow;
      font-size:25px;
      margin:10% 20%;
      text-align:center;
  

  
  ">
      <center> <h2>Update Fees</h2>
      
       <form action="update.jsp">
            <label>Student name:</label>
            <input type="text" required name="u1"> <br> <br>
              <label > Fees paid: </label>
              <input type="text" required name="u2"><br><br>
               <label > Fees Remaining: </label>
              <input type="text" required name="u3"><br><br>
            <input type="submit" value="update" style="font-size:20px; color:red;">
            <br> <br>
       </form>

          </section>


          <div id="remove" style="

      background-color:lightyellow;
      font-size:25px;
      margin:10% 20%;
      text-align:center;

   

">
   <center> <h2> Remove student </h2>
       <form action="Remove.jsp">
            <label >Student Name:</label>
            <input type="text" required name="r1"> <br><br>
            <input type="submit" value="Delete" style="font-size:20px; color:red;" onclick="you">
            <br> <br>
           </form>
    
</div>
      
</body>
</html>