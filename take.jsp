<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Form</title>
    <style>
        body {
            background-image: url("data:image/jpeg;base64,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"); /* Update this path to your image */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent white background */
            padding: 20px;
            margin: 50px auto;
            width: 50%;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="checkbox"] {
            margin: 10px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Attendance Form</h1>
        <form action="processAttendance.jsp" method="post">
            <%
                // Database connection details
                String dbURL = "jdbc:mysql://localhost:3306/hostel";
                String dbUser = "root";
                String dbPassword = "";

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    // Load the JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish a connection
                    conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                    // Execute a query to get the student list
                    String sql = "SELECT name FROM student";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);

                    // Iterate through the result set and display each student with a checkbox
                    while (rs.next()) {
                        String name = rs.getString("name");
                        %>
                        <div>
                            <input type="checkbox" name="student" value="<%=name%>"> <%=name%>
                        </div>
                        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("An error occurred: " + e.getMessage());
                } finally {
                    // Close the resources
                    if (rs != null) {
                        try {
                            rs.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                    if (stmt != null) {
                        try {
                            stmt.close();
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
            <input type="submit" value="Submit Attendance">
        </form>
    </div>
</body>
</html>
