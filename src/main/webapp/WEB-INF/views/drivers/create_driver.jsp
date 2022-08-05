<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<section>
    <h2>Create driver: </h2>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name: <input type="text" name="name"><br>
        License number: <input type="text" name="license_number"><br>
        <button type="submit">create</button>
    </form>
    <br>
    <div>
        <a href="/">home</a>
    </div>
</section>

</body>
</html>
