<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Package</title>
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
        <h2>Edit Package</h2>
        <form action="view-packages.jsp" method="post">
            <label for="packageName">Package Name:</label>
            <input type="text" id="packageName" name="packageName" value="Beach Getaway" required>
            <br>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required>Relax on the beach.</textarea>
            <br>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" value="499.99" required>
            <br>
            <label for="imageUrl">Image URL:</label>
            <input type="text" id="imageUrl" name="imageUrl" value="images/beach.jpg" required>
            <br>
            <button type="submit">Update Package</button>
        </form>
    </div>
</body>
</html>
