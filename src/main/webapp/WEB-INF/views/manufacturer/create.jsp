<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../header.jsp" %>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <label>
        <input type="text" name="manufacturer_country" value=""
               placeholder="Entre manufacturer country"/>
        <input type="text" name="manufacturer_name" value="" placeholder="Entry manufacturer name"/>
        <input type="submit" value="Create manufacturer">
    </label>
</form>
