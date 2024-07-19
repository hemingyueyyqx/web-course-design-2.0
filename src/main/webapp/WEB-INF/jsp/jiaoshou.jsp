<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>教授</title>
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
        .teacher {
            text-decoration: none;
            color: black;
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

                    <div class="card-header">
                        <img id="imageToClick1" src="resources/images/teacher1.jpg" alt="" width="300px" height="300px">
                    </div>
                    <h2><a href="teacher1" class="teacher">李莉</a></h2>
                </div>
                <div class="card">

                    <div class="card-header">
                        <img id="imageToClick2" src="resources/images/teacher2.jpg" alt=""  width="300px" height="300px">
                    </div>
                    <h2><a href="teacher2" class="teacher">邱兆文</a></h2>
                </div>
                <div class="card">
                    <div class="card-header">
                        <img id="imageToClick3" src="resources/images/teacher3.jpg" alt=""  width="300px" height="300px">
                    </div>
                    <h2><a href="teacher3" class="teacher">赵玉茗</a></h2>
                </div>

            </div>
    </div>

</div>
        <%@include file="footer.jsp"%>
        <script>
            const image1 = document.getElementById("imageToClick1");
            image1.addEventListener('click', function () {
                window.location.href = "teacher1";
            })
            const image2 = document.getElementById("imageToClick2");
            image2.addEventListener('click', function () {
                window.location.href = "teacher2";
            })
            const image3 = document.getElementById("imageToClick3");
            image3.addEventListener('click', function () {
                window.location.href = "teacher3";
            })
        </script>
</body>
</html>
