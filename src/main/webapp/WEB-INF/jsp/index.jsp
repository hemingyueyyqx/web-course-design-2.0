<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>软件工程专业</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
        .news {
            padding: 30px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            margin: 30px 0;
        }
        .news .news-header{
            border-bottom: 2px solid #ddd;
            display: flex;
            align-items: center;
        }
        .news .news-header h3 {
            border-bottom: 2px solid midnightblue;
            margin: 0;
        }
        .news .news-header a {
            display: inline-block;
            text-decoration: none;
            color: midnightblue;
        }
        .news .news-header a:hover {
            color: pink;
        }
        .news-right {
            margin-left: auto;
        }
        .news ul li a {
            display: inline-block;
            text-decoration: none;
            color: black;
        }
        .news ul li a:hover {
            color: midnightblue;
            /*font-size: 16px;*/
        }
        .news ul li {
            margin: 15px 0;
            color: #ddd;
            /*position: relative;*/
            font-size: 14px;
            /*display: flex;*/
            /*list-style: none;*/
        }
        .news ul li:hover {
            color: midnightblue;
            /*font-size: 16px;*/
        }
        /*.news ul li:hover >span {*/
        /*    !*font-size: 16px;*!*/
        /*    color: midnightblue;*/
        /*}*/
        .news ul li:hover >a {
            color: midnightblue;
        }
        .span-updateTime {
            color:gray;
            margin-left: auto;
            /*position: absolute;*/
            /*right: 0;*/
        }
        .xwgg {
            display: flex;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp"%>
    <%@include file="carousel.jsp"%>
<%--    <img src="resources/images/img14.jpg" alt="" width="300px" height="200px">--%>
    <div class="xwgg">
        <div class="news" style="margin-right: 15px">
            <div class="news-header">
                <h3>新闻中心</h3>
<%--                <a href="index" class="news-right">查看更多</a>--%>
            </div>
            <ul>
                <c:forEach begin="0" end="4" step="1" items="${news}" var="n">
                    <li>
                        <a href="jdbc/getnews?newsid=${n.id}">${n.name}</a>
                        <span class="span-updateTime">${n.updateTime}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
   
        <div class="news" style="margin-left: auto">
            <div class="news-header">
                <h3>通知公告</h3>
<%--                <a href="index" class="news-right">查看更多</a>--%>
            </div>
            <ul>
                <c:forEach begin="0" end="4" step="1" items="${announcements}" var="a">
                    <li>
                        <a href="jdbc/getannouncement?announcementid=${a.id}">${a.name}</a>
                        <span class="span-updateTime">${a.updateTime}</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <%@include file="footer.jsp"%>
    </div>


</body>
</html>
