<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create manufacturer</title>
</head>
<body>
    <h1>Hello ! I can add a new manufacturer to db</h1>
    <form method="post" action="${pageContext.request.contextPath}/createManufacturer">
        Name<input type="text" name="name"><br>
        Country<input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
