<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../header.jsp" %>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label>
        <input type="text" name="car_model" value="" placeholder="Enter car model"/>
    </label>
    <label>
        <select name="manufacturer_id">
            <option value="0">Chose manufacturer</option>

            <c:forEach items="${manufacturer}" var="manufacturer">
                <option value="${manufacturer.id}">${manufacturer.name}
                    / ${manufacturer.country}</option>
            </c:forEach>
        </select>
    </label>
    <input type="submit" value="Create car"/>
</form>
