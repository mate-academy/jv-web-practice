<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>All manufacturers from database</title>
  <style>
    html * {
      font-size: 16px;
      line-height: 1.625;
      color: #000000;
      font-family: Nunito, sans-serif;
    }
  </style>
</head>
<body bgcolor="#ffd700">
<div align="center">
  <h3>MANUFACTURERS LIST</h3>
  <form action="<c:url value="/index"/>" >
    <input type="submit" value="HOME" />
  </form>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/all">
    <table style="with: 80%" border="1">
      <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
      </tr>
      <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
          <td><c:out value="${manufacturer.id}" /></td>
          <td><c:out value="${manufacturer.name}" /></td>
          <td><c:out value="${manufacturer.country}" /></td>
          <td><a href="${pageContext.request.contextPath}/manufacturers/remove?id=${manufacturer.id}">DELETE</a></td>
        </tr>
      </c:forEach>
    </table>
  </form>
</div>
</body>
</html>
