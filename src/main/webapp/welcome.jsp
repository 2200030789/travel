<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="/tour.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
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
    <div class="container">
        <h2>Welcome to Our Tourism Portal</h2>
        <p>Explore the best tour packages and destinations.</p>
    </div>
</body>
</html>
