<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>ADDING CAR TO DB</title>
</head>
<body>
<h1>CREATE CAR:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model: <input type="text" name="model"><br>
    Car manufacturer ID: <input type="text" name="manufacturer_id"><br>
    <button type="submit">CONFIRM</button>
</form>
<tr>
    <td><a href="${pageContext.request.contextPath}/index">Main page</a></td>
</tr>
</body>
</html>
