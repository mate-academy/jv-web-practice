<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New driver</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<h1>
    New driver <br>
</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"> <br>
    License <input type="text" name="license"> <br>
    <button type="submit">apply</button>
</form>
</body>
</html>
