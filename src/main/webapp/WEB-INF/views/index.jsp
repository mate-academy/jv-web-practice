<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<a href="${pageContext.request.contextPath}/pageManager?action_page=createDriver.jsp">Create driver</a>
<p><a href="${pageContext.request.contextPath}/drivers">Get all drivers</a></p>
<p><a href="${pageContext.request.contextPath}/pageManager?action_page=createManufacturer.jsp">Create manufacturer</a></p>
<p><a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturers</a></p>
<p><a href="${pageContext.request.contextPath}/pageManager?action_page=createCar.jsp">Create car</a></p>
<p><a href="${pageContext.request.contextPath}/pageManager?action_page=addDriverToCar.jsp">Add driver to car</a></p>
<p><a href="${pageContext.request.contextPath}/cars">Get all cars</a></p>
</body>
</html>
