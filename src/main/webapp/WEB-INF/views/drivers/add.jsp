<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <h3>To add a new driver, please fill out the form: </h3>
    </div>
    <div class="row">
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            <div class="form-group row">
                <label for="driverName" class="col-sm-6 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="driverName" name="name" placeholder="Name">
                </div>
            </div>
            <div class="form-group row">
                <label for="driverLicenseNumber" class="col-sm-6 col-form-label">License number</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="driverLicenseNumber" name="licenseNumber"
                           placeholder="License number">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Add driver</button>
        </form>
    </div>
</div>
</body>
</html>
