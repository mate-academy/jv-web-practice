<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
    <style>
        body{
            background-color: azure;    }
        div {
            text-align: center;
        }
    </style>
</head>
<body>
<div>
  <h1>Fill out the form</h1>
  <h1>Driver:</h1>
  <form method="post" action="${pageContext.request.contextPath}/drivers/add">
      Driver name: <input type="text" name="name"><br>
      License Number <input type="text" name="license_number"><br>
      <button type="submit">Submit</button>
</form>
</div>
</body>
</html>
