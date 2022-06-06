<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<section>
    <h2>Create manufacturer: </h2>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name: <input type="text" name="name"><br>
        Country: <input type="text" name="country"><br>
        <button type="submit">create</button>
    </form>
    <br>
    <div>
        <a href="/">home</a>
    </div>
</section>

</body>
</html>
