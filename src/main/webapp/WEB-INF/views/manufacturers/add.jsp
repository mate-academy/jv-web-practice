<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Manufacturer</title>
</head>
<body>
<h1>Create manufacturer using these fields</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">create</button>
</form>
</body>
</html>
