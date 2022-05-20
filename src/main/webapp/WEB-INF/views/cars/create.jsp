<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h1>Create Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    MODEL <input type="text" name="model"><br>
    MANUFACTURER_id <input type="text" name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
