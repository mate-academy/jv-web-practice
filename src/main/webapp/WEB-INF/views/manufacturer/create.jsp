
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<%@include file="/WEB-INF/views/headers/heder.jsp"%><br>
<body>
<h1>To register a manufacturer, enter the name and country</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
