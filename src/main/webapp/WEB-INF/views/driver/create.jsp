<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<h1>Create driver</h1>
<form method="post" action="${pageContext.request.contextPath}/create">
    <input type="text" name="driver_name" value="" placeholder="Enter driver name" />
    <input type="text" name="licence_number" value="" placeholder="Enter driver licence" />
    <input type="submit" value="Create driver" />
</form>
<br /><br />
${message}
<%@include file="../footer.jsp"%>
