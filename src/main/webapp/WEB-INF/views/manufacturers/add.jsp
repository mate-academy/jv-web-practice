<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<style>
    h2 {
        text-align: center;
    }
</style>
<head>
    <title align="center">Create new manufacturer</title>
</head>
<body>
<h2>Please fill the form below</h2>
<form align="center" method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    manufacturer name <input type="text" name="name"><br>
    <br>
    manufacturer country <input type="text" name="country"><br>
    <button align="center" type="submit">Add manufacturer</button>
</form>
</body>
</html>
