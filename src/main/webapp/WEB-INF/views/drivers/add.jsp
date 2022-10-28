<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contexPath}/drivers/add"></form>
<h1>Add driver</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>ADD</td>
    </tr>
    <tr>
        <td>
            <label>
                <input type="text" name="name" form="driver" required>
            </label>
        </td>
        <td>
            <label>
                <input type="text" name="licenceNumber" form="driver" required>
            </label>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
