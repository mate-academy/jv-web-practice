<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Create car</title>
  </head>
  <body>
    <h1>Enter data to create a car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
      Car model <input type="text" name="car_model" required>
      Select manufacturer <select id="manufacturer" name="manufacturer_id" required>
        <c:forEach items="${manufacturers}" var="manufacturer">
          <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
      </select>
      <button type="submit">Create</button>
    </form>
  </body>
</html>
