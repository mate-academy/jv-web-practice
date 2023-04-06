<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <table class="__table">
      <thead>
      <tr>
        <th>id</th>
        <th>name</th>
        <th>license number</th>
      </tr>
      </thead>
      <tbody>
      <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
      <c:forEach var="driver" items="${drivers}">
        <tr>
          <td>${driver.getId()}</td>
          <td>${driver.getName()}</td>
          <td>${driver.getLicenseNumber()}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <a href="drivers/add">add driver</a>
  </div>
</body>
</html>
