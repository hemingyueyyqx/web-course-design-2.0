<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>软件工程方向简介</title>
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
            font-size: 20px;
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
        .detail {
            font-size: 16px;
            font-family: "Microsoft YaHei", serif;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <%@include file="header.jsp"%>
    <div class="main">
        <div id="sidebar2">
            <h2>
                <a>专业介绍</a>
            </h2>
            <ul>
                <li><a href="zyjs/zyjj">专业简介</a></li>
                <li><a href="zyjs/fxjj">方向简介</a></li>
            </ul>
        </div>
        <div class="contents">
            <h3>软件工程方向简介</h3>
            <pre class="detail">
                软件工程是一个广泛的领域，涵盖了多个就业方向和职业角色。

                1.软件开发工程师（Software Developer/Engineer）：
                前端开发工程师（Frontend Developer）：负责构建用户界面和用户体验。
                后端开发工程师（Backend Developer）：处理应用程序的服务器端逻辑和数据库管理。
                全栈开发工程师（Full-stack Developer）：具备前端和后端开发技能，能够独立开发完整的应用程序。

                2.移动应用开发（Mobile App Development）：
                iOS开发工程师：开发运行在苹果设备上的应用程序。
                Android开发工程师：开发运行在Android设备上的应用程序。

                3.游戏开发（Game Development）：
                游戏程序员：开发电子游戏的各个方面，包括图形、物理引擎、人工智能等。

                4.数据科学与机器学习（Data Science and Machine Learning）：
                数据工程师：负责处理大数据、数据流和数据分析。
                机器学习工程师：开发机器学习模型和算法，进行数据分析和预测。

                5.云计算与大数据（Cloud Computing and Big Data）：
                云工程师：负责设计、开发和管理基于云平台的应用和服务。
                大数据工程师：处理和分析大规模数据集，构建数据存储和处理系统。

                6.软件测试与质量保证（Software Testing and Quality Assurance）：
                质量保证工程师（QA Engineer）：负责确保软件产品质量和稳定性。
                自动化测试工程师：开发和执行自动化测试脚本，提高测试效率和覆盖范围。

                7.DevOps与系统管理员（DevOps and Systems Administration）：
                DevOps工程师：负责自动化软件开发、测试和部署流程。
                系统管理员（SysAdmin）：管理和维护企业系统和服务器。

                8.安全工程（Security Engineering）：
                网络安全工程师：保护企业网络和系统安全，防范和应对网络攻击和数据泄露。

                9.嵌入式系统开发（Embedded Systems Development）：
                嵌入式软件工程师：开发嵌入式系统和设备的软件，如嵌入式操作系统和驱动程序。

                10.人工智能（Artificial Intelligence）：
                AI工程师：开发和应用人工智能算法和技术，如自然语言处理、计算机视觉等。

                这些方向不仅仅是职业角色，还涉及到各种不同的技术栈、行业应用和专业领域，每个方向都有其独特的发展路径和就业前景。
                选择合适的软件工程就业方向通常取决于个人兴趣、技能和职业目标。</pre>
        </div>
    </div>
    <%@include file="footer.jsp"%>
</div>
</body>
</html>
