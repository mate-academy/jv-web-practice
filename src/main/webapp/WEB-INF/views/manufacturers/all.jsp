<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
        <meta charset="UTF-8">
        <title>All manufacturers list</title>
    </head>
    <body>
        <div class="columns">
            <div class="column is-5 is-offset-1">
            <h1 class="title">List of all manufacturers:</h1>
                <table class="table">
                    <thead>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Country</td>
                    </tr>
                    <thead>
                    <tbody>
                    <c:forEach var="manufacturer" items="${manufacturers}">
                        <tr>
                        <td>${manufacturer.id}</td>
                        <td>${manufacturer.name}</td>
                        <td>${manufacturer.country}</td>
                        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
                        </tr>
                    </c:forEach>
                    <tbody>
                </table>
                <nav class="breadcrumb" aria-label="breadcrumbs">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index">Main page</a></li>
                    <li><a href="${pageContext.request.contextPath}/manufacturers/register">Register manufacturer</a><br></li>
                </ul>
                </nav>
            </div>
        </div>
    </body>
</html>