<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saved</title>
</head>
<body>
<h3>${name} Saved successfully!</h3>
<h1>${message}</h1>
<br>
<a href="${pageContext.request.contextPath}${url}">Add another ${name}</a>
</body>
</html>
