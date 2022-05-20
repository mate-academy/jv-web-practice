<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a manufacturer</title>
</head>
<body>
    <span style="font-family: monospace; color: #000000; "><h1>Please fill the form below</h1>

        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Name <input type="text" name="name"><br>
            Country <input type="text" name="country"><br>
            <button type="submit"><span style="font-family: monospace; color: #000000; ">Add manufacturer</span></button>
        </form>
    </span>
</body>
</html>
