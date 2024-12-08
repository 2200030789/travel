<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/booking.css">
    <script>
        function validateForm() {
            const fullName = document.getElementById("fullName").value.trim();
            const email = document.getElementById("email").value.trim();
            const phone = document.getElementById("phone").value.trim();
            const travelDate = document.getElementById("travelDate").value;
            const currentDate = new Date().toISOString().split("T")[0];

            const nameRegex = /^[a-zA-Z\s]+$/;
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            const phoneRegex = /^\d{10}$/;

            if (!nameRegex.test(fullName)) {
                alert("Full Name must contain only letters and spaces.");
                return false;
            }

            if (!emailRegex.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (!phoneRegex.test(phone)) {
                alert("Phone Number must contain exactly 10 digits.");
                return false;
            }

            if (travelDate < currentDate) {
                alert("Travel Date cannot be in the past.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/welcome">Home</a>
        <a href="${pageContext.request.contextPath}/about">About Us</a>
        <a href="${pageContext.request.contextPath}/packages">Tour Packages</a>
        <a href="${pageContext.request.contextPath}/gallery">Gallery</a>
        <a href="${pageContext.request.contextPath}/contact">Contact Us</a>
        <a href="${pageContext.request.contextPath}/login">Logout</a>
    </div>

    <div class="content">
        <h2>Book Your Tour</h2>
        <form action="${pageContext.request.contextPath}/submitBooking" method="post" class="booking-form" onsubmit="return validateForm()">
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>

            <label for="package">Select Tour Package:</label>
            <select id="package" name="package" required>
                <option value="Beach Getaway">Beach Getaway - $499</option>
                <option value="Mountain Adventure">Mountain Adventure - $699</option>
                <option value="City Lights Tour">City Lights Tour - $399</option>
                <option value="Hotels">Hotels - $299</option>
                <option value="Cultural Retreats">Cultural Retreats - $349</option>
                <option value="Wildlife Sanctuaries">Wildlife Sanctuaries - $249</option>
                <option value="Desert Glamping">Desert Glamping - $559</option>
                <option value="Cruise Packages">Cruise Packages - $759</option>
            </select>

            <label for="travelDate">Travel Date:</label>
            <input type="date" id="travelDate" name="travelDate" required>

            <label for="specialRequests">Special Requests:</label>
            <textarea id="specialRequests" name="specialRequests" rows="4"></textarea>

            <button type="submit">Book Now</button>
        </form>
    </div>
</body>
</html>
