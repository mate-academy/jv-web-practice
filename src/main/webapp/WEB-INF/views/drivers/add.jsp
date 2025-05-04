<%--
  Created by IntelliJ IDEA.
  User: Dmitriy.Koval
  Date: 04.03.2023
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create new driver</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<h1>Create new driver</h1>
<form action="${pageContext.request.contextPath}/drivers/add" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required><br>
      <label for="licenseNumber">License number:</label>
      <input type="text" id="licenseNumber" name="licenseNumber" required><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
