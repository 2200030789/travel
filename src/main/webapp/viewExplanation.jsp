<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Explanation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/gallery.css"> <!-- Include your original CSS file -->
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/welcome">Home</a>
        <a href="${pageContext.request.contextPath}/about">About Us</a>
        <a href="${pageContext.request.contextPath}/packages">Tour Packages</a>
        <a href="${pageContext.request.contextPath}/gallery">Gallery</a>
        <a href="${pageContext.request.contextPath}/contact">Contact Us</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>

    <div class="content">
        <h2>${destination} - Explanation</h2>
        <p>${explanation}</p>
        <a href="${pageContext.request.contextPath}/gallery">
            <button>Back to Gallery</button>
        </a>
    </div>
</body>
</html>
