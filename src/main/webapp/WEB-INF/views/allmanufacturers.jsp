<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<table>
    <h3>List of Manufacturers </h3>
    <a href="manufacturers/manufacturer">Create Manufacturer</a>
    <tr>
        <td>id</td>
        <td>name</td>
        <td  colspan="2">country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="manufacturers/manufacturer?manufacturer_id=${manufacturer.id}">edit</a></td>
            <td><a href="cars/car?manufacturer_id=${manufacturer.id}">new car</a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="includes/footer.jsp" %>