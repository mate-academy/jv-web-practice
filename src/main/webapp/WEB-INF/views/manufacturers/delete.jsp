<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>List of Manufacturers</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<h1>List of Manufacturers</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Country</th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="manufacturer" items="${manufacturers}">
    <tr>
      <td>${manufacturer.id}</td>
      <td>${manufacturer.name}</td>
      <td>${manufacturer.country}</td>
      <td>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/delete">
          <input type="hidden" name="id" value="${manufacturer.id}" />
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
