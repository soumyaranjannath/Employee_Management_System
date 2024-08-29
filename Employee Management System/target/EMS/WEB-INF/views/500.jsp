<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Server Error</title>
</head>
<body>
    <h1>500 - Internal Server Error</h1>
    <p>An unexpected error occurred:</p>
    <pre>${exception.message}</pre>
    <a href="${pageContext.request.contextPath}/">Go to Home Page</a>
</body>
</html>
