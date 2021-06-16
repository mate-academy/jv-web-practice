<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all driver</title>
</head>
<body>
 <h3>List of driver: </h3>
 <table border="1">
     <td>id</td>
     <td>name</td>
     <td>license number</td>
     <td>delete</td>
     <c:forEach items = "${drivers}" var="driver">
         <tr>
             <td><c:out value ="${driver.id}"/></td>
             <td><c:out value ="${driver.name}"/> </td>
             <td><c:out value ="${driver.licenseNumber}"/> </td>
             <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete it driver
             </a></td>
         </tr>
     </c:forEach>
 </table>
 <a href="${pageContext.request.contextPath}/drivers/create"> create driver </a>
</body>
</html>
