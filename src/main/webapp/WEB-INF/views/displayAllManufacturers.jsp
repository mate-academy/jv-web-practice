<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
  <h1>All manufacturers : </h1>
  <table border="1">
      <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
      </tr>
      <c:forEach items="${manufacturers}" var="manufacturer">
          <tr>
              <td><c:out value="${manufacturer.getId()}" /></td>
              <td><c:out value="${manufacturer.getName()}" /></td>
              <td><c:out value="${manufacturer.getCountry()}" /></td>
              <td>
                  <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete this driver</a>
              </td>
          </tr>
      </c:forEach>
  </table>
</body>
</html>
