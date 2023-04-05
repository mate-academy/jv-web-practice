<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navigationBar.jsp"%>
<div style="font-family: arial; float: left; display: inline-block; background: url('https://i2.paste.pics/MXS5H.png') no-repeat; width: 1466px; height: 745px">
  <h2 style="color: steelblue">Our awesome drivers:</h2>
  <table style="color: steelblue">
    <tr>
      <td>ID</td>
      <td>NAME</td>
      <td>LICENCE NUMBER</td>
    </tr>
    <c:forEach items="${allDrivers}" var="driver">
      <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
      </tr>
    </c:forEach>
  </table>
  <br>
  <h2 style="color: steelblue">New driver registration:</h2>
  <form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <div style="color: steelblue">Driver's name</div> <input type="text" style="color: steelblue" name="name" required><br><br>
    <div style="color: steelblue">License number</div> <input type="number" style="color: steelblue" name="license_number" required><br><br>
    <button type="submit" style="color: steelblue">Confirm</button>
  </form>
</div>
</body>
</html>
