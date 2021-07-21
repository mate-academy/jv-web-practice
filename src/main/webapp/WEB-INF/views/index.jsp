<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<form method="get" action="${pageContext.request.contextPath}/cars/drivers/">
    <button type="submit" >All Drivers</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/cars/">
    <button type="submit" >All Cars</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/cars/registration">
    <button type="submit">Create New Car </button>
</form>
<form method="get" action="${pageContext.request.contextPath}/">
    <button type="submit">Reset Info</button>
</form>
</body>
</html>
