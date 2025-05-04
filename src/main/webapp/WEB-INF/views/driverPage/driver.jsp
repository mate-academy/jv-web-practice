<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Drivers page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container-md mt-3">
            <div class="d-flex justify-content-between">
                <h3>Add new driver:</h3>
                <button type="button" class="btn btn-info">
                    <a class="text-decoration-none text-light"
                       href="${pageContext.request.contextPath}/index">
                        Home page
                    </a>
                </button>
            </div>
            <form method="post" action="${pageContext.request.contextPath}/drivers/add">
                <div class="input-group mb-3" style="width: 35%;">
                    <span class="input-group-text" style="min-width: 150px;">Name</span>
                    <input type="text" name="name" class="form-control"
                           minlength="1" maxlength="15" pattern="^[A-Za-z]{1,15}$" required
                           placeholder="no digits and spaces, only 1-16 letters ">
                </div>
                <div class="input-group mb-3" style="width: 35%;">
                    <span class="input-group-text" style="min-width: 150px;">Licence number</span>
                    <input type="text" name="licenceNumber" class="form-control"
                           minlength="10" pattern="\w{10}$" required
                           placeholder="only 10 letters/digits">
                </div>
                <button type="submit" class="btn btn-outline-success">Confirm</button>
            </form>

            <h1 class="text-center my-3">Drivers List:</h1>
            <div class="row">
                <c:forEach items="${drivers}" var="driver">
                    <div class="col-sm-4 mb-3">
                        <div class="card border-info">
                            <div class="card-body">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <span class="text-info">Driver - </span>
                                        <c:out value="${driver.name}" />
                                    </li>
                                    <li class="list-group-item">
                                        <span class="text-info">licence - </span>
                                         <c:out value="${driver.licenceNumber}" />
                                    </li>
                                    <button type="button" class="btn btn-outline-danger">
                                        <a class="text-decoration-none text-black"
                                           href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                                            Delete driver
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
