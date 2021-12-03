<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saved</title>
</head>
<body>
<h3>${name} has been saved successfully!</h3>
<br>
<a href="${pageContext.request.contextPath}${url}">Add another ${name}</a>
<br>
<a href="${pageContext.request.contextPath}/">Back to main</a>
</body>
</html>
