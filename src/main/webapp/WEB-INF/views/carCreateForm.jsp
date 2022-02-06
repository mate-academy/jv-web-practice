<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
    <script type = "text/javascript">
        function fun() {
            alert ("Done");
        }
    </script>
</head>
<body>
<h1>Create new car from follow data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer <input type="text" name="manufacturer"><br>
    <button type="submit" onclick="fun()">Create</button>
</form>
</body>
</html>
