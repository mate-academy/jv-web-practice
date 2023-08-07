<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
  <title>Creating a car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  model <input type="text" name="model"><br>

  Select a Category:&nbsp;
  <select name="manufacturer">
    <c:forEach items="${manufacturers}" var="manufacturer">
    <option value="${manufacturer.id}">${manufacturer.name}</option>
    </c:forEach>
  </select>
  <button type="submit">Confirm</button>
</form>
</body>
</html>