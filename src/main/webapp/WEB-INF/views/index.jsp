<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Project Page</title>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>
<div id="wb_Heading" style="position:absolute;left:0px;top:19px;width:800px;height:43px;z-index:0;">
    <h1 id="Heading" class="h2">Make you choice</h1>
</div>
<hr id="Line" style="position:absolute;left:4px;top:73px;width:800px;z-index:1;">
<div id="NavigationBar1" style="position:absolute;left:78px;top:88px;width:140px;height:123px;z-index:2;">
    <ul class="navbar">
        <li>
            <a href="${pageContext.request.contextPath}cars/create">
                <img src="images/img0001_over.png" class="hover">
                <span>
                    <img src="images/img0001.png">
                </span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}cars/add-driver">
                <img src="images/img0002_over.png" class="hover">
                <span>
                    <img src="images/img0002.png">
                </span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}cars/all">
                <img src="images/img0003_over.png" class="hover">
                <span>
                    <img src="images/img0003.png">
                </span>
            </a>
        </li>
    </ul>
</div>
<div id="NavigationBar2" style="position:absolute;left:340px;top:88px;width:140px;height:82px;z-index:3;">
    <ul class="navbar">
        <li>
            <a href="${pageContext.request.contextPath}drivers/create">
                <img src="images/img0004_over.png" class="hover">
                <span>
                    <img src="images/img0004.png">
                </span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}drivers/all">
                <img src="images/img0005_over.png" class="hover">
                <span>
                    <img src="images/img0005.png">
                </span>
            </a>
        </li>
    </ul>
</div>
<div id="NavigationBar3" style="position:absolute;left:580px;top:88px;width:140px;height:82px;z-index:4;">
    <ul class="navbar">
        <li>
            <a href="${pageContext.request.contextPath}manufacturers/create">
                <img src="images/img0006_over.png" class="hover">
                <span>
                    <img src="images/img0006.png">
                </span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}manufacturers/all">
                <img src="images/img0007_over.png" class="hover">
                <span>
                    <img src="images/img0007.png">
                </span>
            </a>
        </li>
    </ul>
</div>
</body>
</html>
