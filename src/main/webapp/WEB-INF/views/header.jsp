<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/style/style.css"/>"/>
  </head>
  <body>
  <div class="header__wrapper">
    <header>
      <nav class="header__navigation">
        <a href="/index"><img src="" alt="Logo"/></a>
        <a href="/cars">Cars</a>
        <a href="/drivers">Drivers</a>
        <a href="/manufacturers">Manufacturers</a>
      </nav>
      <div class="user__block">
        <a href="">
          <img src="<c:url value="${pageContext.request.contextPath}/images/logout.svg"/>" alt="Log out"/>
        </a>
        <a href="">Admin</a>
      </div>
    </header>
    <hr/>
  </div>
  </body>
</html>
