<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
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
  <h1>New Manufacturer:</h1>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
      Manufacturer name <input type="text" name="name"><br>
      Country <input type="text" name="country"><br>
      <button type="submit">Submit</button>
  </form>
</div>
</body>
</html>
