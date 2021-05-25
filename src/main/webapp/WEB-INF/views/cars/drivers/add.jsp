<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <h3>To add a driver to car, please fill out the form: </h3>
    </div>
    <div class="row">
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            <div class="form-group row">
                <label for="driverId" class="col-sm-6 col-form-label">Manufacturer Id</label>
                <div class="col-sm-10">
                    <select name="driver_id" class="form-control" id="driverId" required>
                        <c:forEach items="${drivers}" var="driver">
                            <option value="${driver.id}">${driver.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="carId" class="col-sm-6 col-form-label">Manufacturer Id</label>
                <div class="col-sm-10">
                    <select name="car_id" class="form-control" id="carId" required>
                        <c:forEach items="${cars}" var="car">
                            <option value="${car.id}">${car.model}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Add driver to car</button>
        </form>
    </div>
</div>
</body>
</html>


