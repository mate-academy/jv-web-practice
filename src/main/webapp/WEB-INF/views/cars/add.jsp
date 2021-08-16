<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
    <h1>ADDING A NEW CAR</h1>
    <h2>Please the form below</h2>
    <form method="post" action="${pageContext.request.contextPath}/add-new-car">
        MODEL: <input type="text" name="model" required="required"><br>
        MANUFACTURER: <input type="text" name="manufacturer_id" required="required"><br>
        <button type="submit">CREATE CAR</button>
    </form>
</body>
</html>
