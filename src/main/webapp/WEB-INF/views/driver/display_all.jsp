<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../header.jsp" %>
<h1>Display all drivers</h1>
<h2>List of drivers:</h2>
<style>
    table, th, td {
        border-collapse: collapse;
        padding: 5px 12px;
        border: 3px solid deeppink;
    }
</style>
<table>
    <tr>
        <th>Name</th>
        <th>Licence</th>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
