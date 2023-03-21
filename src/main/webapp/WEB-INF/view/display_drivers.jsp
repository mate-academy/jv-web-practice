<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
    <style>
        table,
        th,
        td {
            padding: 10px;
            border: 1px solid black;
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
   <table>
       <th>ID</th>
       <th>Name</th>
       <th>License Number</th>
       <th></th>
       <c:forEach items="${drivers}" var = "driver">
       <tr>
           <td><c:out value="${driver.id}"/></td>
           <td><c:out value="${driver.name}"/></td>
           <td><c:out value="${driver.licenseNumber}"/></td>
           <td><a href = "${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
       </tr>
       </c:forEach>
   </table>
</body>
</html>
