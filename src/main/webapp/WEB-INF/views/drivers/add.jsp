<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>WEB PRACTICE</title>
    <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<%@include file="/WEB-INF/views/navbar/navbar.jsp" %>
<h1>CREATE DRIVER</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add" name="add-driver">
    <label>Driver name: <input type="text" required name="name"></label>
    <label>License number: <input type="number" required name="number"></label>
    <button type="submit">Create</button>
</form>
</body>
</html>
