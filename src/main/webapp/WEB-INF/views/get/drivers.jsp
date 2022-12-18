<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>All drivers</title>
  </head>
  <body>
    <h2><i>List drivers</i></h2>
    <table>
      <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
      </tr>
      <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
      <c:forEach items="${drivers}" var="driver">
        <tr>
          <td> <c:out value="${driver.id}"/> </td>
          <td> <c:out value="${driver.name}"/> </td>
          <td> <c:out value="${driver.licenseNumber}"/> </td>
        </tr>
      </c:forEach>
    </table>
    <h3><i>Delete driver by ID</i></h3>
    <form method="get" action="${pageContext.request.contextPath}/del/driver">
      Driver ID <label> <input type="number" name="driver_id"> </label>
      <button type="submit">Delete</button>
    </form>
  </body>
</html>
