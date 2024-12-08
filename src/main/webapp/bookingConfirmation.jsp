<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header h1 {
            color: #4CAF50;
        }
        .content {
            font-size: 16px;
            line-height: 1.5;
            color: #333;
        }
        .content .details {
            margin: 20px 0;
        }
        .content .details p {
            margin: 5px 0;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Booking Confirmed!</h1>
            <p>Thank you for choosing our service.</p>
        </div>
        <div class="content">
            <p>Your booking details are as follows:</p>
            <div class="details">
                <p><strong>Booking ID:</strong> <%= request.getAttribute("bookingId") %></p>
                <p><strong>Name:</strong> <%= request.getAttribute("name") %></p>
                <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
                <p><strong>Phone:</strong> <%= request.getAttribute("phone") %></p>
                <p><strong>Check-in Date:</strong> <%= request.getAttribute("checkInDate") %></p>
                <p><strong>Check-out Date:</strong> <%= request.getAttribute("checkOutDate") %></p>
                <p><strong>Number of Guests:</strong> <%= request.getAttribute("guests") %></p>
            </div>
            <p>If you have any questions, feel free to contact us.</p>
        </div>
        <div class="footer">
            <p>&copy; 2024 Your Company Name. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
