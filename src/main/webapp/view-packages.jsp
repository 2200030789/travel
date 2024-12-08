<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Packages</title>
    <link rel="stylesheet" type="text/css" href="admin.css">
</head>
<body>
    <div class="navbar">
        <a href="admin-dashboard.jsp">Dashboard</a>
        <a href="add-package.jsp">Add Package</a>
        <a href="view-packages.jsp">View Packages</a>
        <a href="admin-login.jsp">Logout</a>
    </div>
    <div class="content">
        <h2>Available Packages</h2>
        <table border="1">
            <tr>
                <th>Package Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
            <%
                // Static data for demonstration
                String[][] packages = {
                    {"Beach Getaway", "Relax on the beach.", "499.99", "images/beach.jpg"},
                    {"Mountain Adventure", "Thrilling mountain hikes.", "699.99", "images/mountain.jpg"}
                };
                for (String[] pkg : packages) {
            %>
            <tr>
                <td><%= pkg[0] %></td>
                <td><%= pkg[1] %></td>
                <td>$<%= pkg[2] %></td>
                <td><img src="<%= pkg[3] %>" alt="<%= pkg[0] %>" width="100"></td>
                <td>
                    <a href="edit-package.jsp?name=<%= pkg[0] %>">Edit</a> | 
                    <a href="view-packages.jsp?delete=<%= pkg[0] %>">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>
