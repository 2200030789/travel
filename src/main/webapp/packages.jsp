<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Tour Packages</title>
    <link rel="stylesheet" type="text/css" href="package.css">
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
        <h2>Explore Our Exclusive Tour Packages</h2>
        <div class="package-container">
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img4.jpg" alt="Beach Getaway">
                <h3>Beach Getaway</h3>
                <p>Price: <strong>$499</strong></p>
                <p>Relax by the serene beaches and enjoy the soothing waves.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Beach+Getaway'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img3.jpg" alt="Mountain Adventure">
                <h3>Mountain Adventure</h3>
                <p>Price: <strong>$699</strong></p>
                <p>Experience thrilling mountain hikes and breathtaking views.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Mountain+Adventure'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img5.jpg" alt="City Lights Tour">
                <h3>City Lights Tour</h3>
                <p>Price: <strong>$399</strong></p>
                <p>Explore the vibrant city nightlife and iconic landmarks.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=City+Lights+Tour'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img11.jpg" alt="Hotels">
                <h3>Hotels</h3>
                <p>Price: <strong>$299</strong></p>
                <p>Explore the luxurious hotels and their world-class amenities.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Hotels'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img12.jpg" alt="Wildlife Sanctuaries">
                <h3>Wildlife Sanctuaries</h3>
                <p>Price: <strong>$249</strong></p>
                <p>Explore the captivating wildlife sanctuaries and their breathtaking natural beauty.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Wildlife+Sanctuaries'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img13.jpg" alt="Cultural Retreats">
                <h3>Cultural Retreats</h3>
                <p>Price: <strong>$349</strong></p>
                <p>Explore the enriching cultural retreats and their immersive traditional experiences.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Cultural+Retreats'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img14.jpg" alt="Desert Glamping">
                <h3>Desert Glamping</h3>
                <p>Price: <strong>$559</strong></p>
                <p>Explore the unique desert glamping sites and their luxurious, starlit experiences.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Desert+Glamping'">Book Now</button>
            </div>
            <div class="package">
                <img src="${pageContext.request.contextPath}/images/img15.jpg" alt="Cruise Packages">
                <h3>Cruise Packages</h3>
                <p>Price: <strong>$759</strong></p>
                <p>Explore the exquisite cruise packages and their unforgettable oceanic adventures.</p>
                <button onclick="window.location.href='${pageContext.request.contextPath}/booking?package=Cruise Packages'">Book Now</button>
            </div>
        </div>
    </div>
</body>
</html>
