<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Added driver to car</title>
  <style>
    body {
      text-size-adjust: 100%;
      box-sizing: border-box;
      margin: 5px;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      font-size: 14px;
      line-height: 1.5;
      color: rgb(36, 41, 46);
      background-color: rgb(255, 255, 255);
    }
  </style>
</head>
<body>
<h3>Driver successfully added to car:</h3>
Driver:<br>
id: <c:out value="${driver.id}"/><br/>
name: <c:out value="${driver.name}"/><br/>
license number: <c:out value="${driver.licenseNumber}"/><br>
Car:<br>
id: <c:out value="${car.id}"/><br/>
model: <c:out value="${car.model}"/><br/>
manufacturer: <c:out value="${car.manufacturer.name}"/><br>
</body>
</html>
