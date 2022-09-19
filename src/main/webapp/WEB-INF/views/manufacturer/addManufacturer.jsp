<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
    <h1>To add new Manufacturer - enter data below</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturer/addManufacturer">
        Name <input type="text" name="name" required><br>
        Country <input type="text" name="country" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
