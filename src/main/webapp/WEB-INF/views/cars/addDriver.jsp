<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to <c:out value="${car.model}" /></title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h2>Add driver to <c:out value="${car.manufacturer.name}" /> <c:out value="${car.model}" />:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add?id=${car.id}">
  <label for="driver">Choose driver to add:</label><br>
  <select id="driver" name="driverID" required>
    <c:forEach items="${driversList}" var="driver">
      <option value="${driver.id}">${driver.name}</option>
    </c:forEach>
  </select><br><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
