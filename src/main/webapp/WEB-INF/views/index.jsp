<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>taxi service</title>
</head>
<body>
<h1>simple taxi service</h1>
<a href="${pageContext.request.contextPath}/manufacturers/all">1. manufacturers list</a><br>
<a href="${pageContext.request.contextPath}/manufacturers/add">2. create new manufacturer</a><br>
<a href="${pageContext.request.contextPath}/drivers/all">3. drivers list</a><br>
<a href="${pageContext.request.contextPath}/drivers/add">4. create new driver</a><br>
<a href="${pageContext.request.contextPath}/cars/all">5. cars list</a><br>
<a href="${pageContext.request.contextPath}/cars/add">6. create new car</a><br>
<a href="${pageContext.request.contextPath}/cars/drivers/add">7. add driver to car</a><br>
</body>
</html>