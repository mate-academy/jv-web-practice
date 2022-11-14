<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../header.jsp" %>
<h1>Create driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <label>
        <input type="text" name="driver_name" value="" placeholder="Entre driver name"/>
        <input type="text" name="licence_number" value="" placeholder="Entre driver licence"/>
        <input type="submit" value="Create a driver"/>
    </label>
</form>
