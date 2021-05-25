<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add car</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <div class="row">
    <h3>To add a new car, please fill out the form: </h3>
  </div>
  <div class="row">
    <form method="post" action="${pageContext.request.contextPath}/car/add">
      <div class="form-group row">
        <label for="carModel" class="col-sm-6 col-form-label">Model</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="carModel" name="model" placeholder="Model" required>
        </div>
      </div>
      <div class="form-group row">
        <label for="carManufacturerId" class="col-sm-6 col-form-label">Manufacturer Id</label>
        <div class="col-sm-10">
          <select name="manufacturer_id" class="form-control" id="carManufacturerId" required>
            <c:forEach items="${manufacturers}" var="manufacturer">
              <option value="${manufacturer.id}">${manufacturer.name}</option>
            </c:forEach>
          </select>
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Add car</button>
    </form>
  </div>
</div>
</body>
</html>

