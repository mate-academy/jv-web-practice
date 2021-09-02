<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>TAXI SERVICE</title>
    </head>
    <body>
        <h1>Please choose option:</h1>
        <td><a href="${pageContext.request.contextPath}/all-manufacturers">View all manufacturers</a></td><br>
        <td><a href="${pageContext.request.contextPath}/add-new-manufacturer">Add new manufacturer</a></td><br><br>

        <td><a href="${pageContext.request.contextPath}/all-drivers">View all drivers</a></td><br>
        <td><a href="${pageContext.request.contextPath}/add-new-driver">Add new driver</a></td><br><br>

        <td><a href="${pageContext.request.contextPath}/all-cars">View all cars</a></td><br>
        <td><a href="${pageContext.request.contextPath}/add-new-car">Add new car</a></td><br>

        <td><a href="${pageContext.request.contextPath}/add-driver-to-car">Add driver to the car</a></td><br>
    </body>
</html>
