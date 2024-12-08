<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/admin-login" method="post" class="login-form">
            <label>Admin Username:</label>
            <input type="text" name="adminUsername" required />
            <br />
            <label>Password:</label>
            <input type="password" name="adminPassword" required />
            <br />
            <button type="submit">Login</button>
            <p>Go back to <a href="${pageContext.request.contextPath}/login">User Login</a></p>
        </form>
    </div>
</body>
</html>
