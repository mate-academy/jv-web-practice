<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add Driver To Car</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            <h1>Choose car and driver you want to add</h1>
            <div>
                <label>Input car id:</label>
                <input type="number" name="car_id">
            </div>
            <div>
                <label>Input driver id:</label>
               <input type="number" name="driver_id">
            </div>
            <div>
                <button type="submit">Add driver to car</button>
            </div>
        </form>
    </body>
</html>
