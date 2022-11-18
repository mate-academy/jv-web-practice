<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
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
  <h3>List of drivers:</h3>
  <table>
      <tr>
          <td>id</td>
          <td>name</td>
          <td>license number</td>
      </tr>
      <c:forEach items="${drivers}" var="driver">
          <tr>
              <td><c:out value="${driver.id}"/></td>
              <td><c:out value="${driver.name}"/></td>
              <td><c:out value="${driver.licenseNumber}"/></td>
              <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
          </tr>
      </c:forEach>
  </table>
</body>
</html>
