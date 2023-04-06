<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <form action="${pageContext.request.contextPath}/drivers/add" method="post">
      <label for="choose__driver">Choose Driver</label>
      <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
      <select name="driver" id="choose__driver">
        <c:if test="${drivers.isEmpty()}">
          <option value="1">Empty</option>
        </c:if>
        <c:forEach var="driver" items="${drivers}">
          <option value="${driver.getId()}">${driver.getName()}</option>
        </c:forEach>
      </select>
      <br/>
      <jsp:useBean id="cars" scope="request" type="java.util.List"/>
      <label for="choose__car">Choose car</label>
      <select name="car" id="choose__car">
        <c:if test="${cars.isEmpty()}">
          <option value="1">Empty</option>
        </c:if>
        <c:forEach var="car" items="${cars}">
          <option value="${car.getId()}">${car.getName()}</option>
        </c:forEach>
      </select>
      <br/>
      <c:choose>
        <c:when test="${!drivers.isEmpty() && !cars.isEmpty()}">
          <input type="submit" value="add">
        </c:when>
        <c:otherwise>
          You can't add because you did not add a car or driver
        </c:otherwise>
      </c:choose>
    </form>
  </div>
</body>
</html>
