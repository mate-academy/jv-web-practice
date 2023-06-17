<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Cars Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container-md mt-3">
            <div class="d-flex justify-content-between">
                <h3>Add new car:</h3>
                <button type="button" class="btn btn-info">
                    <a class="text-decoration-none text-light"
                       href="${pageContext.request.contextPath}/index">
                        Home page
                    </a>
                </button>
            </div>
            <form method="post" action="${pageContext.request.contextPath}/cars/add">
                <div class="input-group mb-3" style="width: 30%;">
                    <span class="input-group-text" style="min-width: 130px;">Model</span>
                    <input type="text" name="model" class="form-control"
                           minlength="1" maxlength="15" pattern="\S{1,15}$"
                           placeholder="no spaces, only 1-15 symbols">
                </div>
                <select name="manufacturerId" class="form-select mb-3" style="width: 10%;">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="${manufacturer.id}">
                            <c:out value="${manufacturer.name}" />
                        </option>
                    </c:forEach>
                </select>
                <button type="submit" class="btn btn-outline-success">Confirm</button>
            </form>

            <button type="button" class="btn btn-primary me-md-2">
                <a class="text-decoration-none text-light"
                   href="${pageContext.request.contextPath}/cars/drivers">
                    Manage car drivers
                </a>
            </button>

            <h1 class="text-center my-3">Cars List:</h1>
            <div class="row">
                <c:forEach items="${cars}" var="car">
                    <div class="col-sm-4 mb-3">
                        <div class="card border-info">
                            <div class="card-body">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <span class="text-info">Model - </span>
                                        <c:out value="${car.model}" />
                                    </li>
                                    <li class="list-group-item">
                                        <span class="text-info">Manufacturer - </span>
                                        <c:out value="${car.manufacturer.getName()}" />
                                    </li>
                                    <li class="list-group-item">
                                        <span class="text-info">Drivers - </span>
                                        <c:forEach items="${car.drivers}" var="driver">
                                            <span><c:out value="${driver.name}" />,</span>
                                        </c:forEach>
                                    </li>
                                    <button type="button" class="btn btn-outline-danger">
                                        <a class="text-decoration-none text-black"
                                           href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                                            Delete car
                                        </a>
                                    </button>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
