<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
    <h2>Create manufacturer</h2>
      <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        Name <input type="text" name="manufacturerName"><br><br>
        Country <input type="text" name="country"><br><br>
        <button type="submit">Create</button>
      </form>
</body>
</html>
