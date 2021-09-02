<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New driver</title>
</head>
<body>
    <h1>ADDING A NEW DRIVER</h1>
    <h2>Please the form below</h2>
    <form method="post" action="${pageContext.request.contextPath}/add-new-driver">
        NAME: <input type="text" name="name" required="required"><br>
        LICENSE NUMBER: <input type="text" name="license_number" required="required"><br>
        <button type="submit">CREATE DRIVER</button>
    </form>
</body>
</html>
