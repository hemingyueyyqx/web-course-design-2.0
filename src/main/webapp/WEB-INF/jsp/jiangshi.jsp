<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>讲师</title>
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
        .contents h3 {
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
        /*.detail {*/
        /*    font-size: 16px;*/
        /*    font-family: "Microsoft YaHei", serif;*/
        /*}*/
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
            /*border-radius: 50%;*/
        }
        .card-content {
            display: none;
            text-align: justify;
            margin: 5px;
        }
        .card-header:hover + .card-content {
            display: block;
        }
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
    </style>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp"%>
    <div class="main">
        <div id="sidebar2">
            <h2>
                <a>教师队伍</a>
            </h2>
            <ul>
                <li><a href="jsdw/jiaoshou">教授</a></li>
                <li><a href="jsdw/fujiaoshou">副教授</a></li>
                <li><a href="jsdw/jiangshi">讲师</a></li>
            </ul>
        </div>
        <div class="contents">
            <div class="row">
            <div class="card">
                <h2>王波</h2>
                <div class="card-header">
                    <img src="resources/images/teacher7.jpg" alt="" width="300px" height="300px">
                </div>
                <div class="card-content">
                    <p>
                        王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。
                    </p>
                </div>
                <%--                        <div class="card-footer">--%>
                <%--                            <a class="more" href="">Read More</a>--%>
                <%--                        </div>--%>
            </div>
            <div class="card">
                <h2>李琰</h2>
                <div class="card-header">
                    <img src="resources/images/teacher8.jpg" alt=""  width="300px" height="300px">
                </div>
                <div class="card-content">
                    <p>
                        李琰，讲师，主要研究方向：软件工程，遥感和林业信息。参与科研项目多项，参编教材1部，并发表部分相关论文。
                    </p>
                </div>
                <%--                        <div class="card-footer">--%>
                <%--                            <a class="more"  href="">Read More</a>--%>
                <%--                        </div>--%>
            </div>
            <div class="card">
                <h2>单颖</h2>
                <div class="card-header">
                    <img src="resources/images/teacher9.jpg" alt=""  width="300px" height="300px">
                </div>
                <div class="card-content">
                    <p>

                        单颖，博士，讲师，主要研究方向：软件工程，林业信息。参与科研项目多项，并发表相关论文。
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
