<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<h1>Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/create">
    <input type="text" name="car_model" value="" placeholder="Enter car_model" />
    <select name="manufacturer_id">
        <option value="0">Choose manufacturer</option>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name} / ${manufacturer.country}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Create car" />
</form>
<br /><br />
${message}
<%@include file="../footer.jsp"%>
