<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/gallery.css"> <!-- Include your original CSS file -->
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
        <h2>Explore Our Beautiful Destinations</h2>
        <div class="gallery">
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img7.jpg" alt="Beach" />
                <p>Beach Paradise</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Beach">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img19.jpg" alt="Cultural Retreats" />
                <p>Cultural Retreats</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Cultural Retreats">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img8.jpg" alt="Mountain Adventure" />
                <p>Mountain Adventure</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Mountain Adventure">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img15.jpg" alt="Cruise Packages" />
                <p>Cruise Packages</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Cruise Packages">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img18.jpg" alt="Wildlife Sanctuaries" />
                <p>Wildlife Sanctuaries</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Wildlife Sanctuaries">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img6.jpg" alt="City Lights Tour" />
                <p>City Lights Tour</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=City Lights Tour">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img17.jpg" alt="Desert Glamping" />
                <p>Desert Glamping</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Desert Glamping">
                    <button>View</button>
                </a>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/images/img10.jpg" alt="Hotels" />
                <p>Hotels</p>
                <a href="${pageContext.request.contextPath}/viewExplanation?destination=Hotels">
                    <button>View</button>
                </a>
            </div>
        </div>
    </div>
</body>
</html>
