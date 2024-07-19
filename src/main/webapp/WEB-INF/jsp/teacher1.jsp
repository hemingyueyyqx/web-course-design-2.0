<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>teacher1</title>
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


                    <h2 style="text-align: center">李莉</h2>

                   <img class="centered-image" src="resources/images/teacher1.jpg" alt="" width="400px" height="400px">

                        <pre class="detail">      李莉，博士，教授，硕士生导师，东北林业大学青年成栋名师、软件工程专业主任、专业党支部书记。美国加州大学（河滨）访问学者。主持和参加国家级、省部级各类科研、教研项目15项，各级各类获奖10余项，作为第一作者发表SCI、EI、中文核心期刊等论文20余篇、主编教材4部。主持国家级一流本科课程、黑龙江省线上线下精品课程、东北林业大学一流本科课程、东北林业大学重点课程。获得第二届全国高校混合式教学设计创新大赛一等奖、华为产学合作专项奖；2次入选黑龙江省在线教学优秀案例；多次获得东北林业大学教学质量优秀奖、教学改革奖、教书育人先进个人称号。
                        </pre>
        </div>

    </div>
    <%@include file="footer.jsp"%>
</body>
</html>
