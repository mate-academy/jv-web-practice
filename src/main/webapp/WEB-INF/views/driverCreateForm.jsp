<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
    <script type = "text/javascript">
        function fun() {
            alert ("Done");
        }
    </script>
</head>
<body>
<h1>Create new driver from follow data</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    Licence number <input type="text" name="licence_number"><br>
    <button type="submit" onclick="fun()">Create</button>
</form>
</body>
</html>
