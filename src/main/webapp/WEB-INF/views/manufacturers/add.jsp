<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <h3>To add a new manufacturer, please fill out the form: </h3>
    </div>
    <div class="row">
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            <div class="form-group row">
                <label for="manufacturerName" class="col-sm-6 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="manufacturerName" name="name" placeholder="Name">
                </div>
            </div>
            <div class="form-group row">
                <label for="manufacturerCountry" class="col-sm-6 col-form-label">Country</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="manufacturerCountry" name="country" placeholder="Country">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Add manufacturer</button>
        </form>
    </div>
</div>
</body>
</html>

