<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>软件工程专业实验室</title>
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



        .row {
            display: flex;
        }
        .card {
            /*opacity: 0.5;*/
            width: 320px;
            padding: 20px;
            margin: 15px;
            text-align: center;
            transition: all 0.5s;
        }
        .card-header img {
            width: 100%;
            border-radius: 50%;
        }
        .card-content {
            /*display: none;*/
            text-align: justify;
            margin: 5px;
        }
        /*.card-header:hover + .card-content {*/
        /*    display: block;*/
        /*}*/
        .card-footer .more {
            border-radius: 8px;
            padding: 5px 10px;
            text-decoration: none;
            color: white;
            display: inline-block;
            background-color: #e86464;

        }
        .card:hover {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            opacity: 1.0;
        }
        .card:hover .card-header img {
            opacity: 1.0;
        }
        /*.card-footer {*/
        /*    text-align: right;*/
        /*}*/
        /*.card-footer .more:hover {*/
        /*    background-color: red;*/
        /*}*/

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
                <li><a href="sys">923实验室</a></li>
                <li><a href="sys">925实验室</a></li>
                <li><a href="sys">916实验室</a></li>
            </ul>
        </div>
        <div class="contents">
<%--            <h2>软件工程专业实验室</h2>--%>
            <div class="sys">
                <div class="row">
                    <div class="card">
                        <h2>923开发与编程实验室</h2>
                        <div class="card-header">
                            <img src="resources/images/sys1.jpg" alt="">
                        </div>
                        <div class="card-content">
                            <p>
                                描述：这些实验室用于学生学习和实践软件开发和编程技能。通常配备有高性能计算机、开发工具（如集成开发环境IDE）、调试器和版本控制系统等。<br>
                                功能：学生在这里进行编码、测试和调试软件应用程序。可以涵盖不同的编程语言和开发平台，例如Java、Python、C++等。
                            </p>
                        </div>
<%--                        <div class="card-footer">--%>
<%--                            <a class="more" href="">Read More</a>--%>
<%--                        </div>--%>
                    </div>
                    <div class="card">
                        <h2>925软件测试实验室</h2>
                        <div class="card-header">
                            <img src="resources/images/sys2.jpg" alt="">
                        </div>
                        <div class="card-content">
                            <p>
                                描述：这些实验室专注于软件测试和质量保证。设备通常包括自动化测试工具、性能测试工具和缺陷管理系统。<br>
                                功能：学生学习如何设计测试用例、执行功能测试、性能测试和安全性测试，以及分析和报告测试结果。
                            </p>
                        </div>
<%--                        <div class="card-footer">--%>
<%--                            <a class="more"  href="">Read More</a>--%>
<%--                        </div>--%>
                    </div>
                    <div class="card">
                        <h2>916人机交互实验室</h2>
                        <div class="card-header">
                            <img src="resources/images/sys3.jpg" alt="">
                        </div>
                        <div class="card-content">
                           <p>
                               描述：这些实验室专注于研究和开发用户界面和交互设计。通常包含用户体验评估工具、原型设计软件和眼动追踪设备。<br>
                               功能：学生学习设计易用性和用户友好的软件界面，进行用户调研、原型设计和评估，以提高软件的用户体验。
                           </p>
                        </div>
<%--                        <div class="card-footer">--%>
<%--                            <a class="more"  href="">Read More</a>--%>
<%--                        </div>--%>
                    </div>

                </div>
        </div>
    </div>

</div>
        <%@include file="footer.jsp"%>
</body>
</html>
