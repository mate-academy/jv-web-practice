<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Create new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  <label for="name">Name</label><br>
  <input type="text" id="name" name="name"><br>
  <label for="country">Country</label><br>
  <input type="text" id="country" name="country"><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
