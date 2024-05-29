<%@ page import="java.sql.*, java.util.*" %>
<%
    // Get the checked student names from the request
    String[] presentStudents = request.getParameterValues("student");

    // Database connection details
    String dbURL = "jdbc:mysql://localhost:3306/hostel";
    String dbUser = "root";
    String dbPassword = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    String message="Attendance has been recorded successfully.";

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish a connection
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        // Iterate through the selected students and insert attendance records
        if (presentStudents != null) {
            for (String studentName : presentStudents) {
                String sql = "INSERT INTO attendance (name, date) VALUES (?, CURDATE())";

                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, studentName);
                pstmt.executeUpdate();
            }

            %>


            <script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "admin.jsp"; // Replace with your desired forward page
  }, 2000); // Replace 2000 with the desired time delay in milliseconds
</script>
           <%
        } else {
            %>


            <script>
  setTimeout(function() {
    alert("<%= "No attendance data to record." %>");
    window.location.href = "admin.jsp"; // Replace with your desired forward page
  }, 2000); // Replace 2000 with the desired time delay in milliseconds
</script>
           <%
            

     
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("An error occurred: " + e.getMessage());
    } finally {
        // Close the resources
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
