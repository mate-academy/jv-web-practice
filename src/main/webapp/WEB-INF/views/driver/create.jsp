<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<%@include file="/WEB-INF/views/headers/heder.jsp"%><br>
<body>
<h1>To register a driver, enter the name and number of license</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
</form>

</body>
</html>
