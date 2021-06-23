<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a new Manufacturer</title>
</head>
<body>
    <h1>Fill the form below to create a new Manufacturer</h1>

    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        Manufacturer's name <input type="text" name="manufacturer_name"><br>
        Country <input type="text" name="country"><br>
        <button name="submit">Create a Manufacturer</button>
    </form>
</body>
</html>
