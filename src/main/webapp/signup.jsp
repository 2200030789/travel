<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Signup</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
</head>
<body>
    <div class="signup-container">
        <h2>Signup</h2>
        <form:form action="${pageContext.request.contextPath}/signup" method="post" modelAttribute="user" class="signup-form">
            <label>Full Name:</label>
            <form:input path="fullName" required="true" />
            <br />
            <label>Email:</label>
            <form:input path="email" type="email" required="true" />
            <br />
            <label>Username:</label>
            <form:input path="username" required="true" />
            <br />
            <label>Password:</label>
            <form:password path="password" required="true" />
            <br />
            <label>Phone Number:</label>
            <form:input path="phoneNumber" />
            <br />
            <button type="submit">Sign Up</button>
            <p>Already have an account? <a href="${pageContext.request.contextPath}/login">Login</a></p>
        </form:form>
    </div>
</body>
</html>