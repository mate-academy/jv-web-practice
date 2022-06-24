<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        <%--@elvariable id="page_title" type="mate.controller.driver.ShowDriversController"--%>
        ${page_title}
    </jsp:attribute>

    <jsp:attribute name="header">
        <%--@elvariable id="page_header" type="mate.controller.driver.ShowDriversController"--%>
        ${page_header}
    </jsp:attribute>

    <jsp:body>
        <div class="mb-3">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">License Number</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
                <%--@elvariable id="drivers" type="mate.controller.driver.ShowDriversController"--%>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <th scope="row"><c:out value="${driver.getId()}"/></th>
                    <td><c:out value="${driver.getName()}"/></td>
                    <td><c:out value="${driver.getLicenseNumber()}"/></td>
                    <td><a type="button" class="btn btn-secondary"
                           href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>

        <div class="mb-3">
        <a type="button" class="btn btn-primary"
           href="${pageContext.request.contextPath}/drivers/add">Add new</a>
        <div>
    </jsp:body>
</t:genericpage>
