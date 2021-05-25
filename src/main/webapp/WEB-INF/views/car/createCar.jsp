<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
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
     <h2>New car:</h2>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Model: <input type="text" name="model"><br>
            ManufacturerID: <input type="text" name="manufacturer_id"><br>
            <button type="submit">Submit</button>
        </form>
  </div>
</body>
</html>
