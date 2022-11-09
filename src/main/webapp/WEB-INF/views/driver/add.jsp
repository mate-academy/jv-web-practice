<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../header.jsp" %>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>
        <select name="driver_id">
            <option value="0">Chose a driver</option>
            <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
            <c:forEach items="${drivers}" var="drivers">
                <option value="${drivers.id}">${drivers.name} / ${drivers.licenseNumber}</option>
            </c:forEach>
        </select>
    </label>
    <label>
        <select name="car_id">
            <option value="0">Chose a car</option>
            <jsp:useBean id="cars" scope="request" type="java.util.List"/>
            <c:forEach items="${cars}" var="cars">
                <option items="${cars.id}">${cars.model}</option>
            </c:forEach>
        </select>
    </label>
    <input type="submit" value="Add driver to car">
</form>
