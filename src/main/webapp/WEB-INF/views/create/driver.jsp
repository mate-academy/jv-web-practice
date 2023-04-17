<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    h2 {text-align: center;}
</style>
<head>
    <title align = "center">Create new driver</title>
</head>
<body>
<h2>Please fill the form below</h2>
<form align = "center" method="post" action="${pageContext.request.contextPath}/create/driver">
    driver name <input type="text" name="name"><br>
    license number <input type="text" name="license"><br>
    <button align = "center" type="submit">Add driver</button>
</form>
</body>
</html>
