<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath} add">
    name <input type="text" name="name">
    license_number <input type="text" name="license_number">
    <button type="submit">Create</button>
</form>
</body>
</html>
