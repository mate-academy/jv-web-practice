<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath} cars/add">
     model <input type="text" name="model">
     id <input type="number" name="manufacturer_id">
    <button type="submit">Create</button>
</form>
</body>
</html>
