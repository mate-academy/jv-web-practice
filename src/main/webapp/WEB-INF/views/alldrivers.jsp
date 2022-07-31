<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<table>
    <h3>List of Drivers </h3>
    <a href="/drivers/driver">Create Driver</a>
    <tr>
        <td>id</td>
        <td>name</td>
        <td  colspan="2">licensenumber</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="drivers/driver?driver_id=${driver.id}">edit</a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="includes/footer.jsp" %>