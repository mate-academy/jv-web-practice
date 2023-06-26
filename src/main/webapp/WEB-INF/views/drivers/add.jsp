<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
    <title>WEB PRACTICE</title>
</head>
<body>
    <h1>CREATE DRIVER</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add" name="add-driver">
        <label>Driver name: <input type="text" required name="name"></label>
        <label>License number: <input type="number" required name="number"></label>
        <button type="submit">Create</button>
    </form>
</body>
</html>
