<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacture</title>
</head>
<body>
    <h1>Fill out the form for adding a manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name <input type="text" required name="name"><br>
        Country <input type="text" required name="country"><br>
        <button type="submit">Add New Driver</button>
    </form>
</body>
</html>
