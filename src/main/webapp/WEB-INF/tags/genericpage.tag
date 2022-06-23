<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="title" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<!doctype html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<%--suppress JSUnresolvedLibraryURL --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <title>
        <jsp:invoke fragment="title"/>
    </title>
</head>

<body>
    <div class="container py-3">
        <header class="pb-3 mb-4 border-bottom">
            <nav class="navbar justify-content-end navbar-dark">
                <div class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/index">Главная</a>
                </div>
                <div class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/manufacturers">Производители машин</a>
                </div>
                <div class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/drivers">Водители</a>
                </div>
                <div class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/cars">Машины</a>
                </div>
            </nav>
        </header>

        <main>
            <h4 class="text-center">
                <jsp:invoke fragment="header"/>
            </h4>

            <div class="row">
                <div class="px-2">
                    <jsp:doBody/>
                </div>
            </div>
        </main>

        <footer class="d-flex py-2 mt-4 border-top justify-content-end">
            <div class="fs-6">
                <small>designed by gdp for mate academy</small>
            </div>
        </footer>
    </div>

<%--suppress JSUnresolvedLibraryURL --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</body>
</html>
