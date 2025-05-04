<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Manufacturers Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container-md mt-3">
            <div class="d-flex justify-content-between">
                <h3>Add new manufacturer:</h3>
                <button type="button" class="btn btn-info">
                    <a class="text-decoration-none text-light"
                       href="${pageContext.request.contextPath}/index">
                        Home page
                    </a>
                </button>
            </div>
            <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
                <div class="input-group mb-3" style="width: 30%;">
                    <span class="input-group-text" style="min-width: 90px;">Name</span>
                    <input type="text" name="name" class="form-control"
                           minlength="1" maxlength="20" pattern="\S{1,20}$" required
                           placeholder="no spaces, only 1-20 symbols">
                </div>
                <div class="input-group mb-3" style="width:30%;">
                    <span class="input-group-text" style="min-width: 90px;">Country</span>
                    <input type="text" name="country" class="form-control"
                           minlength="1" maxlength="20" pattern="^[A-Za-z]{1,20}$" required
                           placeholder="no spaces, only 1-20 letters">
                </div>
                <button type="submit" class="btn btn-outline-success">Confirm</button>
            </form>

            <h1 class="text-center my-3">Manufacturers List:</h1>
            <div class="row">
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <div class="col-sm-4 mb-3">
                        <div class="card border-info">
                            <div class="card-body">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <span class="text-info">Manufacturer - </span>
                                        <c:out value="${manufacturer.name}" />
                                    </li>
                                    <li class="list-group-item">
                                        <span class="text-info">Country - </span>
                                        <c:out value="${manufacturer.country}" />
                                    </li>
                                    <button type="button" class="btn btn-outline-danger">
                                        <a class="text-decoration-none text-black"
                                           href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                                            Delete manufacturer
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
