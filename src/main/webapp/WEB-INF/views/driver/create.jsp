<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Driver</title>
  <%@include file='/WEB-INF/views/common/header.html' %>
</head>
<body>
<h1>Fill fields to create driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  Driver license <input type="text" name="license"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
