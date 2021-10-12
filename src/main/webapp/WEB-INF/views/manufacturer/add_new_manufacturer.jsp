<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>For add new Manufacturer fill in the forms below</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
        Manufacturer Name <input type="text" name="name"><br>
        Country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
