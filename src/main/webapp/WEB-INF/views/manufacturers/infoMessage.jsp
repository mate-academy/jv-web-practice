<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer don't exist</title>
</head>
    <h1>Manufacturer don't exist. Please add new manufacture or select from manufactures list</h1>
    <body>

        <form method="get" action="${pageContext.request.contextPath}/manufacturers/all">
            Check list of manufacturers <button type="submit">Get list</button>
        </form>

</body>
</html>
