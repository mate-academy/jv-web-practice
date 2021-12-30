<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add driver to car</title>
    </head>
    <body>
        <form method="post" id="driverToCar" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
        <h1 class="table">Add driver to car:</h1>
        <table border="1" class="table">
            <tr>
                <th>Driver ID</th>
                <th>Car ID</th>
                <th>Add</th>
            </tr>
            <tr>
                <td>
                    <input type="number" name="driver_id" form="driverToCar" required>
                </td>
                <td>
                    <input type="number" name="car_id" form="driverToCar" required>
                </td>
                <td>
                    <input type="submit" name="add" form="driverToCar">
                </td>
            </tr>
        </table>
        <a href="${pageContext.request.contextPath}/">
            <button>Main page</button>
        </a>
    </body>
</html>
