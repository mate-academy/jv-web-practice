<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        <%--@elvariable id="page_title" type="mate.controller.car.ShowCarsController"--%>
        ${page_title}
    </jsp:attribute>

    <jsp:attribute name="header">
        <%--@elvariable id="page_header" type="mate.controller.car.ShowCarsController"--%>
        ${page_header}
    </jsp:attribute>

    <jsp:body>
        <div class="mb-3">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Model</th>
                <th scope="col">Manufacturer</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
                <%--@elvariable id="cars" type="mate.controller.car.ShowCarsController"--%>
            <c:forEach items="${cars}" var="car">
                <c:set var="id" value="${car.getId()}"/>
                <tr>
                    <th scope="row"><c:out value="${id}"/></th>
                    <td><c:out value="${car.getModel()}"/></td>
                    <td>
                        <c:out value="${car.getManufacturer().getName()}"/> from
                        <c:out value="${car.getManufacturer().getCountry()}"/>
                    </td>
                    <td>
                        <a type="button" class="btn btn-secondary"
                           href="${pageContext.request.contextPath}/cars/drivers?car_id=${id}">List
                            of drivers</a>
                        <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                data-bs-target="#deleteRecord${id}">Delete
                        </button>

                        <div class="modal fade" id="deleteRecord${id}" tabindex="-1"
                             aria-labelledby="deleteModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="deleteModalLabel">Delete</h5>
                                        <button type="button" class="btn-close"
                                                data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Do you really want to delete the record ?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">
                                            Close
                                        </button>
                                        <a type="button" class="btn btn-primary"
                                           href="${pageContext.request.contextPath}/cars/delete?id=${id}">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>

        <div class="mb-3">
        <a type="button" class="btn btn-primary"
           href="${pageContext.request.contextPath}/cars/add">Add new</a>
        <div>
    </jsp:body>
</t:genericpage>
