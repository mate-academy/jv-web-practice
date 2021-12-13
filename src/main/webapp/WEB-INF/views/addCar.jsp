<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
  <form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model<input name="model" type="text" required><br>
    Car manufacturer <select name="manufacturer_id">
      <c:forEach items="${manufacturers}" var="manufacturer">
          <option value="${manufacturer.id}">${manufacturer.name}</option>
      </c:forEach>
    </select>
    <button type="submit">confirm</button>
  </form>
</body>
</html>
