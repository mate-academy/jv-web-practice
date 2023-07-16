<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB PRACTICE</title>
    <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<%@include file="/WEB-INF/views/navbar/navbar.jsp" %>
<h1>ADD MANUFACTURER</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>Name: <input type="text" required name="name"></label>
    <label>Country: <input type="text" required name="country"></label>
    <button type="submit">Add</button>
</form>

</body>
</html>
