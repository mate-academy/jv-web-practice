<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update driver</title>
</head>
<body>
<h1>Update driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/update">
    <label>Model name</label>
    <input type="hidden" name="id" value="${id}">
    <input type="text" name="name" value="${name}">
    <label>Licence Number</label>
    <input type="text" name="licenceNumber" value="${licenceNumber}">
    <button type="submit">Update Driver</button>
</form>
</body>
</html>