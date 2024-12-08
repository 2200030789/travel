<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="/contact.css">
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
        <h2>Contact Us</h2>
        <div class="contact-info">
            <img src="${pageContext.request.contextPath}/images/img9.jpg" alt="Contact Us" />
            <form action="${pageContext.request.contextPath}/contact" method="post">
                <label>Name:</label>
                <input type="text" name="name" required />
                <br />
                <label>Email:</label>
                <input type="email" name="email" required />
                <br />
                <label>Message:</label>
                <textarea name="message" required></textarea>
                <br />
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
</body>
</html>
