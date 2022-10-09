<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Fill the form to add new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <div>
        Driver name: <input type="text" name="name">
    </div>

    <div>
        License number: <input type="text" name="license_number">
    </div>

    <button type="submit">Confirm</button>
</form>
</body>
</html>
