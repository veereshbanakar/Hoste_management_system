<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title> view student</title>
<link href="style.css" rel="stylesheet">
</head>
<body style="background-image: url(https://thumbs.dreamstime.com/b/modern-interior-hostel-bathroom-toilet-cabins-washing-space-bright-lights-79800094.jpg?w=768); background-size:cover; background-attachment:fixed;">

<a href="admin.jsp" style="background-color:wheat; color:red; font-size:25px;      text-decoration: none; onmouseover="this.style.color='red';"  ">&#x2190; Back</a>

<div id="viewfeed" style=" background-color: rgba(0, 1, 0, 0.5); color:white; margin:10% 20%; font-size:25px; padding:0px 0px 10px 0px; align-items: center;">
    <center> <h2>Student Details</h2>
    <table    border=5 style=" border-collapse:collapse; width= 500px; positions:static; padding:20%; ">
    

<%

     Connection conn;
     Statement stmt;
     String s1,message="NO such student exist...!";
     s1=request.getParameter("scarch");
   
    try{
         

         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
         stmt=conn.createStatement();
         ResultSet r=stmt.executeQuery("select * from student where name='"+s1+"' ; ");
        
    
      
         while( r.next())
         {
             out.println("<tr>");
             out.println("<th>Student Name</th>");
             out.println("<td>");
             out.println(r.getString(1));
             out.println("</td></tr> <tr>");
               out.println("<th>Mobile NO</th><td>");
               out.println(r.getString(2));
               out.println("</td></tr><tr>");
               out.println("<th>Fees Paid</th><td>");                          
               out.println(r.getString(3));
               out.println("</td></tr><tr>");
               out.println("<th>Remaining Fees</th><td>");
               out.println(r.getString(4));
               out.println("</td></tr><tr>");
               out.println("<th>Date</th><td>");
               out.println(r.getString(6));
               out.println("</td></tr><tr>");
               out.println("<th>Year</th><td>");
                out.println(r.getString(7));
                out.println("</td></tr><tr>");
                out.println("<th>Branch</th><td>");
                out.println(r.getString(8));
                out.println("</td></tr><tr>");
                   out.println("<th>Room NO</th><td>");
                out.println(r.getString(9));
                out.println("</td></tr><tr>");  
                 out.println("<th>Address</th><td>");
                out.println(r.getString(10));
                out.println("</td></tr><tr>");

               


              
         }


  
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
        </table>

       
    </div>
    
    </body>
    </html>