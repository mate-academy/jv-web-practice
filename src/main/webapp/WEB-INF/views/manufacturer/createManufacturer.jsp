<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create manufacturer</title>
</head>
<body>
    <h1>Create manufacturer</h1>
    <form method="post" action="/manufacturer/create">
        Manufacturer name: <input type="text" name="name">
        Manufacturer country: <input type="text" name="country">
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
