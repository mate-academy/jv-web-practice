<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<form method="post" id="manufacturer" action="${pageContext.request.contexPath}/manufacturers/add"></form>
<h1>Add manufacturer</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>ADD</td>
    </tr>
    <tr>
        <td>
            <label>
                <input type="text" name="name" form="manufacturer" required>
            </label>
        </td>
        <td>
            <label>
                <input type="text" name="country" form="manufacturer" required>
            </label>
        </td>
        <td>
            <input type="submit" name="add" form="manufacturer">
        </td>
    </tr>
</table>
</body>
</html>
