<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>916人机交互实验室</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .container-fluid {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .contents {
            padding: 30px;
            flex: 1;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            min-height: 100vh;
            margin: 20px;
        }
        .card h2 {
            text-align: center;
            margin: 10px;
        }
        .main {
            flex: 1;
            display: flex;
            align-items: flex-start;
        }
        #sidebar2 {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            /* 容器宽度*/
            min-width: 200px;
            box-sizing: border-box;
            margin: 20px;
        }
        #sidebar2 h2 {
            margin: 0;
        }
        #sidebar2 h2 a {
            display: block;
            background: midnightblue;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
        }
        #sidebar2 ul {
            margin: 0;
            padding: 0;
            background: #f1f1f1;
            list-style: none;
        }
        #sidebar2 li a {
            display: block;
            padding: 10px 15px;
            color: #000;
            text-decoration: none;
            transition: transform 0.5s;
        }
        #sidebar2 li a:hover {
            background: midnightblue;
            color: white;
            transform: scale(1.1);
        }

        .card-header img {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp"%>
    <div class="main">
        <div id="sidebar2">
            <h2>
                <a>实验室</a>
            </h2>
            <ul>
                <li><a href="sys1">923开发与编程实验室</a></li>
                <li><a href="sys2">925软件测试实验室</a></li>
                <li><a href="sys3">916人机交互实验室</a></li>
            </ul>
        </div>
        <div class="contents">
            <div class="sys">
                <h2 style="margin-bottom: 20px;text-align: center">916人机交互实验室</h2>
                <div class="card-header">
                    <img src="resources/images/sys3.jpg" alt="">
                </div>
                <div class="card-content">
                    <p style="margin-top: 20px">
                        描述：这些实验室专注于研究和开发用户界面和交互设计。通常包含用户体验评估工具、原型设计软件和眼动追踪设备。<br>
                        功能：学生学习设计易用性和用户友好的软件界面，进行用户调研、原型设计和评估，以提高软件的用户体验。
                    </p>
                </div>
            </div>
        </div>

    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
