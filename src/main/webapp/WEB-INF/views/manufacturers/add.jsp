<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New manufacturer</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<br/>
New manufacturer
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"> <br>
    Country <input type="text" name="country"> <br>
    <button type="submit">apply</button>
</form>
</body>
</html>
