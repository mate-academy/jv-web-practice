<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New manufacturer</title>
</head>
<body>
    <h1>ADDING A NEW MANUFACTURER</h1>
    <h2>Please the form below</h2>
    <form method="post" action="${pageContext.request.contextPath}/add-new-manufacturer">
        NAME: <input type="text" name="name" required="required"><br>
        COUNTRY: <input type="text" name="country" required="required"><br>
        <button type="submit">CREATE MANUFACTURER</button>
    </form>
</body>
</html>
