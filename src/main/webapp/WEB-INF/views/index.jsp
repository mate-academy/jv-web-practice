<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>TaxiService</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
              crossorigin="anonymous">
    </head>
    <body>
        <header>
            <nav class="navbar bg-body-tertiary">
                <div class="container-fluid align-items-center d-flex justify-content-center">
                    <h1 class="mx-5">Taxi service</h1>
                    <button class="btn btn-primary me-md-2" type="button">
                        <a class="text-decoration-none text-light"
                           href="${pageContext.request.contextPath}/drivers">
                            Drivers
                        </a>
                    </button>
                    <button class="btn btn-primary me-md-2" type="button">
                        <a class="text-decoration-none text-light"
                           href="${pageContext.request.contextPath}/cars">
                            Cars
                        </a>
                    </button>
                    <button class="btn btn-primary me-md-2" type="button">
                        <a class="text-decoration-none text-light"
                           href="${pageContext.request.contextPath}/manufacturers">
                            Manufacturers
                        </a>
                    </button>
                </div>
            </nav>
        </header>
    </body>
</html>
