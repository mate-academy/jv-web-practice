<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create_Manufacturer</title>
</head>
<body>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  <br>Manufacturer's name: <input type="text" name="name"><br>
  <br>Country: <input type="text" name="country"><br>
  <button type="submit">Submit</button>
</form>
<td><a href="${pageContext.request.contextPath}/index">Back to taxi</a></td><br>
</body>
</html>
