<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<h1>Add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/add_driver_to_car">
    <select name="driver">
        <option value="0">Choose driver</option>
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
    </select>
    <select name="car">
        <option value="0">Choose car</option>
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">${car.model}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Add driver to car" />
</form>
${message}
<%@include file="../footer.jsp"%>