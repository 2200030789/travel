<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin - User Management</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Navbar styling */
        .navbar {
            background-color: #0000FF;
            padding: 15px;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 15px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #0056b3;
            border-radius: 5px;
        }

        /* Container styling */
        .container {
            max-width: 1100px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Heading styling */
        h2 {
            color: #333;
        }

        /* Form styling */
        .add-user-form {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .add-user-form label {
            display: block;
            margin: 10px 0 5px;
            color: #333;
        }

        .add-user-form input {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .add-user-form button {
            background-color: #007BFF;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-user-form button:hover {
            background-color: #0056b3;
        }

        /* Table styling */
        .user-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 16px;
        }

        .user-table th, .user-table td {
            padding: 12px 15px;
            border: 1px solid #ddd;
        }

        .user-table th {
            background-color: #007BFF;
            color: white;
        }

        .user-table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .user-table tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Button styling for Edit/Delete */
        .user-table form button {
            background-color: #28a745;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .user-table form button:hover {
            background-color: #218838;
        }

        .user-table form button.delete {
            background-color: #dc3545;
        }

        .user-table form button.delete:hover {
            background-color: #c82333;
        }

        /* Add responsiveness */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
            }

            .navbar a {
                margin: 5px 0;
            }

            .add-user-form input {
                font-size: 14px;
            }

            .user-table {
                font-size: 14px;
            }

            .user-table th, .user-table td {
                padding: 10px 12px;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <a href="/admin/dashboard">Dashboard</a>
        <a href="/admin/users">Manage Users</a>
        <a href="/login">Logout</a>
    </nav>

    <div class="container">
        <h2>User Management</h2>
        
        <!-- Add User Form -->
        <form action="${pageContext.request.contextPath}/admin/users" method="post" class="add-user-form">
            <label>Username:</label>
            <input type="text" name="username" required />
            <label>Password:</label>
            <input type="password" name="password" required />
            <label>Email:</label>
            <input type="email" name="email" required />
            <label>Full Name:</label>
            <input type="text" name="fullName" required />
            <label>Phone Number:</label>
            <input type="text" name="phoneNumber" required />
            <button type="submit">Add User</button>
        </form>
        
        <!-- User List Table -->
        <table class="user-table">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Full Name</th>
                    <th>Phone Number</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.fullName}</td>
                        <td>${user.phoneNumber}</td>
                        <td>
                            <!-- Edit Form -->
                            <form action="${pageContext.request.contextPath}/admin/users/${user.id}" method="post" style="display:inline;">
                                <button type="submit">Edit</button>
                            </form>

                            <!-- Delete Form -->
                            <form action="${pageContext.request.contextPath}/admin/users/${user.id}" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this user?');">
                                <input type="hidden" name="_method" value="delete" />
                                <button type="submit" class="delete">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
