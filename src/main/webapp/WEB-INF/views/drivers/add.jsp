<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Registration of drivers</title>
    </head>
    <body>
        <h1>
            Add new driver:
        </h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            DriverName <input type="text" name="name">
            <br>
            Licence number <input type="text" name="licenseNumber">
            <br>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>