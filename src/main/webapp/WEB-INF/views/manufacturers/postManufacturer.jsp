<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Please write data</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <h2>Manufacturer name <input type="text" name="name"><br></h2>
    <h2>Manufacturer country <input type="text" name="country"><br></h2>
    <h3><button type="submit">Confirm</button></h3>
</form>
<h3><a href="http://localhost:8080/main">BACK</a></h3>
</body>
</html>
