<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../header.jsp" %>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <label>
        <select name="driver_id">
            <option value="0">Choose a driver</option>
            <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}">${driver.name}</option>
            </c:forEach>
        </select>
    </label>
    <label>
        <select name="car_id">
            <option value="0">Choose a car</option>
            <jsp:useBean id="cars" scope="request" type="java.util.List"/>
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}">${car.model}</option>
            </c:forEach>
        </select>
    </label>
    <input type="submit" value="Add driver to car" />
</form>