<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <h1>Error</h1>
    <p>An unexpected error occurred: ${error}</p>
    <a href="${pageContext.request.contextPath}/">Go to Home Page</a>
</body>
</html>
