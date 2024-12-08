<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <style>
        /* General body styling */
       body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('/images/img22.jpg'); /* Replace with your image path */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}


        /* Navbar styling */
        .navbar {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            margin-right: 20px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #0056b3;
            border-radius: 5px;
            padding: 5px 10px;
        }

        /* Container styling */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 30px;
            text-align: center;
        }

        /* Info Section styling */
        .info-section {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-top: 30px;
        }

        .info-box {
            background-color: #fff;
            padding: 20px;
            width: 30%;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .info-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .info-box img {
            width: 80px;
            height: 80px;
            margin-bottom: 20px;
        }

        .info-box h3 {
            color: #007BFF;
            font-size: 22px;
            margin-bottom: 10px;
        }

        .info-box p {
            font-size: 16px;
            color: #555;
        }

        .stats {
            font-size: 28px;
            font-weight: bold;
            color: #007BFF;
        }

        /* Button Styling */
        .info-box button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        .info-box button:hover {
            background-color: #0056b3;
        }

        /* Actions Section */
        .actions {
            text-align: center;
            margin-top: 40px;
        }

        .actions button {
            background-color: #28a745;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .actions button:hover {
            background-color: #218838;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .info-section {
                flex-direction: column;
                align-items: center;
            }

            .info-box {
                width: 80%;
                margin-bottom: 20px;
            }

            .actions button {
                width: 100%;
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <a href="${pageContext.request.contextPath}/admin/dashboard">Dashboard</a>
        <a href="${pageContext.request.contextPath}/admin/users">Manage Users</a>
        <a href="${pageContext.request.contextPath}/login">Logout</a>
    </nav>

    <div class="container">
        <h2>Welcome to the Admin Dashboard</h2>

        <div class="info-section">
            <!-- Total Users Box -->
            <div class="info-box">
                <img src="${pageContext.request.contextPath}/images/img21.png" alt="Users">
                <h3>Total Users</h3>
                <p>Number of registered users</p>
                <p class="stats">${usersCount}</p>
            </div>

            <!-- Admin Actions Box -->
            <div class="info-box">
                <img src="${pageContext.request.contextPath}/images/admin.webp" alt="Actions">
                <h3>Admin Actions</h3>
                <p>Manage and oversee platform content</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/admin/users'">Manage Users</button>
                <button onclick="window.location.href='${pageContext.request.contextPath}/admin/guides'">Manage Guides</button>
            </div>
        </div>

        <!-- Dashboard Actions -->
        <div class="actions">
            <h3>Quick Actions</h3>
            <button onclick="window.location.href='${pageContext.request.contextPath}/admin/users'">View Users</button>
        </div>
    </div>
</body>
</html>
