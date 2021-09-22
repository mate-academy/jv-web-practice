<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ManufacturerCreating</title>
</head>
<body>
<h1>You can add new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/addManufacturer">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country">
    <button type="submit">Add</button>
</form>
</table>
</body>
</html>
