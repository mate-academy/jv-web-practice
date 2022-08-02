<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>All manufacturers</title>
  <link rel="stylesheet" href="/css/styles.css" type="text/css"/>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<h2>List of all manufacturers</h2>
<a class="nav-under" href="${pageContext.request.contextPath}/manufacturers/add">Add a manufacturer</a>
<br><br>
<table class="list">
  <tr class="table-header">
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <td>Action</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td style="min-width: 20px"><c:out value="${manufacturer.id}"/></td>
      <td style="min-width: 90px"><c:out value="${manufacturer.name}"/></td>
      <td style="min-width: 120px"><c:out value="${manufacturer.country}"/></td>
      <td>
        <a class="delete" href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
