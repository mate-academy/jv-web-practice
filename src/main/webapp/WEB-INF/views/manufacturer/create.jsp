<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}manufacturers/create">
    <input type="text" name="manufacturer_name" value="" placeholder="Enter manufacturer name" />
    <input type="text" name="manufacturer_country" value="" placeholder="Enter manufacturer country" />
    <input type="submit" value="Create manufacturer" />
</form>
<br /><br />
<%@include file="../footer.jsp"%>
