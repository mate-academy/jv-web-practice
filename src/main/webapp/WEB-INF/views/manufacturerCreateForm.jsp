<%--
  Created by IntelliJ IDEA.
  User: olegk
  Date: 06.02.2022
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
    <script type="text/javascript">
        function fun() {
            alert ("Done");
        }
    </script>
</head>
<body>
<h1>Create new manufacturer from follow data</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit" onclick="fun()">Create</button>
</form>
</body>
</html>
