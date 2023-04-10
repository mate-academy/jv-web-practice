<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
    <title>Taxi service</title>
</head>
<body>
<div class="columns">
<div class="column is-5 is-offset-1">
<div class="block">
<h1 class="title">Taxi service</h1>
<nav class="breadcrumb" aria-label="breadcrumbs">
  <ul>
    <li><a href="${pageContext.request.contextPath}/manufacturers/all">All manufacturers</a></li>
    <li><a href="${pageContext.request.contextPath}/drivers/all">All drivers</a></li>
    <li><a href="${pageContext.request.contextPath}/cars/all">All cars</a></li>
  </ul>
</nav>
</div>
</div>
</body>
</html>
