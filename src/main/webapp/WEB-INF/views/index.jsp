<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:attribute name="title">
        <%--@elvariable id="page_title" type="mate.controller.IndexController"--%>
        ${page_title}
    </jsp:attribute>

    <jsp:attribute name="header">
        <%--@elvariable id="page_header" type="mate.controller.IndexController"--%>
        ${page_header}
    </jsp:attribute>

    <jsp:body>
        <p>Hi!</p>
        <p>This is the first page of the task jv-web-practice.</p>
        <p>I'm glade to see you.</p>
    </jsp:body>
</t:genericpage>
