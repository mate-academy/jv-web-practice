<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h2>All manufacturers:</h2>
      <table class="table">
        <tr>
          <td class="td">ID</td>
          <td class="td">NAME</td>
          <td class="td">COUNTRY</td>
          <td class="td">DELETE</td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
          <tr>
            <td class="td"><c:out value="${manufacturer.id}" /></td>
            <td class="td"><c:out value="${manufacturer.name}" /></td>
            <td class="td"><c:out value="${manufacturer.country}" /></td>
            <td class="td"><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
          </tr>
        </c:forEach>
      </table>
</body>
</html>
