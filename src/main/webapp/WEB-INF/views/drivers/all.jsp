<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: DOM
  Date: 16.06.2023
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
       <tr>
           <td><c:out value="${driver.id}" /> </td>
           <td><c:out value="${driver.name}" /> </td>
           <td><c:out value="${driver.licenseNumber}" /> </td>
       </tr>
    </c:forEach>
</table>

</body>
</html>
