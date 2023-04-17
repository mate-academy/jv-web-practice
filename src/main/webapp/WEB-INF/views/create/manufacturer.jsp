<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    h2 {text-align: center;}
</style>
<head>
    <title align = "center">Add new manufacturer to db</title>
</head>
<body>
<h2>Please fill the form below</h2>
<form align = "center" method="post" action="${pageContext.request.contextPath}/create/manufacturer">
    manufacturer name <input type="text" name="name"><br>
    manufacturer country <input type="text" name="country"><br>
    <button align = "center" type="submit">Add manufacturer</button>
</form>
</body>
</html>
