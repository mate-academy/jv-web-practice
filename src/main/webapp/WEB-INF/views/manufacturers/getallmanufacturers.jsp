<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all Drivers</title>
</head>
<body>
<h1> List of Manufacturers: </h1>
<table>
  <tr>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
    <td>DELETE</td>
  </tr>
  <c:forEach items="${manufacturers}" var ="manufacturer">
    <tr>
      <td><c:out value = "${manufacturer.getId()}" /></td>
      <td><c:out value = "${manufacturer.getName()}" /></td>
      <td><c:out value = "${manufacturer.getCountry()}" /></td>
      <td><form method="get"
                action ="${pageContext.request.contextPath}/manufacturers/delete">
        <button type="submit" name="id" value="${manufacturer.getId()}">
          Delete this manufacturer
        </button>
      </form>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
