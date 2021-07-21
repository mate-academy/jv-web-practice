<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <style>
        form {
            text-align: center;
            margin-top: 200px
        }
    </style>
    <title>Register a new driver</title>
</head>
<body>
<form name="createDriverForm" method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name: <input type="text" name="name"/> <br/>
    License number: <input type="text" name="license"/> <br/>
    <input type="submit" value="Create Driver"/>
</form>
</body>
</html>
