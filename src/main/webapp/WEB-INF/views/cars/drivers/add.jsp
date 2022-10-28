<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" id="car_driver" action="${pageContext.request.contexPath}/cars/addDriverToCar"></form>
<h1>Add driver to car</h1>
<table>
    <tr>
        <td>CAR ID</td>
        <td>MANUFACTURER ID</td>
        <td>ADD</td>
    </tr>
    <tr>
        <td>
            <label>
                <input type="number" name="car_id" form="car_driver" required>
            </label>
        </td>
        <td>
            <label>
                <input type="number" name="manufacturer_id" form="car_driver" required>
            </label>
        </td>
        <td>
            <input type="submit" name="add" form="car_driver">
        </td>
    </tr>
</table>
</body>
</html>
