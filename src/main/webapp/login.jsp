<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>
        
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/login" method="post" class="login-form">
            <label>Username:</label>
            <input type="text" name="username" required />
            <br />
            <label>Password:</label>
            <input type="password" name="password" required />
            <br />
            <button type="submit">Login</button>
            <p>Don't have an account? <a href="${pageContext.request.contextPath}/signup">Sign up</a></p>
            <p>Don't have an account? <a href="${pageContext.request.contextPath}/admin">Admin Login</a></p>
        </form>
    </div>
</body>
</html>