<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Create manufacturer</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #D8DFF5;
    }

    h1 {
      padding: 20px;
      background-color: #3930f9;
      color: white;
      text-align: center;
      margin: 0;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 15px;
    }

    label {
      margin-bottom: 5px;
    }

    input {
      margin-bottom: 15px;
    }

    button {
      padding: 10px 20px;
      background-color: #201f56;
      color: white;
      border: none;
      cursor: pointer;
      text-transform: uppercase;
      font-weight: bold;
    }

    button:hover {
      background-color: #3930f9;
    }
  </style>
</head>
<body>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  <label>Model name</label>
  <input type="text" name="name">
  <label>Country</label>
  <input type="text" name="country">
  <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
