<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        #header .images {
            display: flex;
            background-color: midnightblue;
            vertical-align: bottom;
            align-items: center;
            padding-left: 10px;

        }

        #header .nav {
            display: flex;
            background: #171760;
            list-style: none;
            justify-content: center;
            width: 100%;
            margin: 0;
            padding: 0;
        }
        #header a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 15px 25px;
        }
        #header a:hover {
            background-color: rgba(0,0,0,0.2);
            color: pink;
        }
        .dropdown {
            padding: 0;
            position: relative;
            /*display: inline-block;*/
        }
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #171760;
            min-width: 150px;
            /*box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);*/
            list-style: none;
            padding: 0;
            text-align: center;
            border: none;
            border-radius: 0;
        }
        .dropdown:hover .dropdown-menu {
            display: block;
        }
        .right {
            margin-left: auto;
        }
    </style>
</head>
<body>
<div id="header">

    <div class="images">
        <img src="resources/images/NEFU-Badge.jpg" alt="" style="width:100px;height:100px; border-radius: 50%">
        <img src="resources/images/ccec.jpg" alt="" style="width:100px;height:100px;border-radius: 50%;margin:  0 10px">
        <h2 style="color: white" >软件工程专业</h2>
    </div>
    <ul class="nav">

        <li><a href="index">首页</a></li>
        <li class="dropdown">
            <a>专业介绍</a>
            <ul class="dropdown-menu" style="background:#171760;border: none;border-radius: 0;min-width: 150px;text-align: center;list-style: none;
            padding: 0;">
                <li><a href="zyjs/zyjj">专业简介</a></li>
                <li><a href="zyjs/fxjj">方向简介</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a>实验室</a>
            <ul class="dropdown-menu" style="background:#171760;border: none;border-radius: 0;min-width: 150px;text-align: center;list-style: none;
            padding: 0;">
                <li><a href="sys">923实验室</a></li>
                <li><a href="sys">925实验室</a></li>
                <li><a href="sys">916实验室</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a>教师队伍</a>
            <ul class="dropdown-menu" style="background:#171760;border: none;border-radius: 0;min-width: 150px;text-align: center;list-style: none;
            padding: 0;">
                <li><a href="jsdw/jiaoshou">教授</a></li>
                <li><a href="jsdw/fujiaoshou">副教授</a></li>
                <li><a href="jsdw/jiangshi">讲师</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a>就业指南</a>
            <ul class="dropdown-menu" style="background:#171760;border: none;border-radius: 0;min-width: 150px;text-align: center;list-style: none;
            padding: 0;">
                <li><a href="jyzn/benkesheng">本科生</a></li>
                <li><a href="jyzn/yanjiusheng">研究生</a></li>
            </ul>
        </li>
        <c:if test="${sessionScope.user != null}">
            <li><a href="welcome">进入后台</a></li>
        </c:if>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <li class="right"><a href="logout">注销</a></li>
            </c:when>
            <c:otherwise>
                <li class="right"><a href="register">登录</a></li>
            </c:otherwise>
        </c:choose>

    </ul>
</div>
</body>
</html>
