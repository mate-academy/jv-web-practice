<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navigationBar.jsp"%>
<div style="font-family: arial; float: left; display: inline-block; background: url('https://i2.paste.pics/MXS5H.png') no-repeat; width: 1466px; height: 745px">
  <h2 style="color: steelblue">Our awesome manufacturers:</h2>
  <table style="color: steelblue">
    <tr>
      <td>ID</td>
      <td>NAME</td>
      <td>COUNTRY</td>
    </tr>
    <c:forEach items="${allManufacturers}" var="manufacturer">
      <tr>
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}" /></td>
      </tr>
    </c:forEach>
  </table><br>
  <h2 style="color: steelblue">New manufacturer registration:</h2>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  <div style="color: steelblue">Manufacturer's name</div> <input type="text" style="color: steelblue" name="name" required><br><br>
  <div style="color: steelblue">Country</div> <input type="text" style="color: steelblue" name="country" required><br><br>
  <button type="submit" style="color: steelblue">Confirm</button>
</form>
</div>
</body>
</html>
