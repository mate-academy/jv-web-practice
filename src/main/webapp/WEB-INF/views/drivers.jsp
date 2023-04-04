<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<>
<h1>Drivers!</h1>
<table></table>
<tr>
    <td>ID</td>
    <td>NAME</td>
    <td>LICENCE_NUMBER</td>
</tr>>
<c:foreach items="${drivers}" var = "driver">
<tr>
    <td><c:out value="${driver.id}" /></td>
    <td><c:out value="${driver.name}" /></td>
    <td><c:out value="${driver.licenseNumber}" /></td>
</tr>

</c:foreach>
</body>
</html>