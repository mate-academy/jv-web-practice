<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<form method="post" id="car" action="${pageContext.request.contexPath}/cars/addCar"></form>
<h1>Add car</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>ADD</td>
    </tr>
        <tr>
            <td>
                <label>
                    <input type="text" name="model" form="car" required>
                </label>
            </td>
            <td>
                <label>
                    <input type="number" name="manufacturer_id" form="car" required>
                </label>
            </td>
            <td>
                <input type="submit" name="add" form="car">
            </td>
        </tr>
</table>
</body>
</html>
