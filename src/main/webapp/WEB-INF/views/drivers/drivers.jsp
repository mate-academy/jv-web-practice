<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Drivers</title>
    </head>
<body>
    <h1>All Drivers:</h1>
    <br>
    <table>
      <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License Number</td>
      </tr>
      <c:forEach items="${drivers}" var="driver">
        <tr>
          <td><c:out value="${driver.id}" /></td>
          <td><c:out value="${driver.name}" /></td>
          <td><c:out value="${driver.licenseNumber}" /></td>
          <td>
 <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a>
          </td>
        </tr>
      </c:forEach>
    </table>
    <br>
    <h3><a href="${pageContext.request.contextPath}/">Back to menu</a></h3>
</body>
</html>