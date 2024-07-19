<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>teacher3</title>
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
        .centered-image {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .detail {
            width: 100%;
            font-size: 16px;
            font-family: "Microsoft YaHei", serif;
            margin: 20px;
            white-space: pre-wrap;
            word-wrap: break-word;
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


            <h2 style="text-align: center">赵玉茗</h2>

            <img class="centered-image" src="resources/images/teacher3.jpg" alt="" width="400px" height="400px">

            <pre class="detail">
                赵玉茗，博士，教授，博士生导师。主要研究方向：生物信息学、数据挖掘。中国计算机学会生物信息专委会委员。主持国家自然科学基金面上项目、国家自然科学基金青年基金项目、国家重点研发项目子课题、黑龙江省自然科学基金、林木遗传育种国家重点实验室开放基金、中央高校基本科研业务费专项基金项目等多项科研项目；获得东北林业大学青年教师授课大赛二等奖；主讲精品在线课程1门；获得专利5项；发表学术论文30余篇，其中EI、SCI收录10余篇，参与编写教材1部。美国Indiana University-Purdue University Indianapolis访问学者，美国The Johns Hopkins University博士后访问学者。
所在学科：林业工程（生物学）博导；计算机科学与技术（学硕及专业学位）硕导
邮箱：zym@nefu.edu.cn
           </pre>
        </div>

    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
