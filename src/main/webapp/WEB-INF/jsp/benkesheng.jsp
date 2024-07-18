<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <c:url var = "base" value = "/" />
    <base href="${base}">
    <title>软件工程专业本科生就业指南</title>
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
                <a>就业指南</a>
            </h2>
            <ul>
                <li><a href="jyzn/benkesheng">本科生</a></li>
                <li><a href="jyzn/yanjiusheng">研究生</a></li>
            </ul>
        </div>
        <div class="contents">
            <h3>软件工程专业本科生就业指南</h3>
            <pre class="detail">
                1.软件开发工程师：

                职责：设计、开发和测试软件应用程序，根据客户或公司需求编写代码。
                技能要求：扎实的编程基础，如Java、Python、C++等；熟悉常见的开发工具和技术栈；良好的问题解决能力和团队合作能力。
                就业前景：软件开发领域需求持续增长，包括各种行业如IT、金融、医疗等。

                2.软件测试工程师：

                职责：设计和执行软件测试计划，确保软件质量和稳定性。
                技能要求：熟悉测试方法论和工具，如自动化测试、性能测试、负载测试等；能够分析和报告测试结果。
                就业前景：随着软件复杂性的增加，软件测试的需求也在增加，尤其是在保障软件质量方面。

                3.项目经理助理：

                职责：支持项目经理，协助项目规划、进度跟踪和团队协作。
                技能要求：理解项目管理原则和方法；良好的沟通能力和组织能力。
                就业前景：是成为项目经理或团队领导的跳板，尤其在大型项目或跨国公司中需求较多。

                4.用户界面设计师：

                职责：设计用户界面和用户体验，优化软件的易用性和用户满意度。
                技能要求：理解用户体验设计原则；熟悉设计工具和用户研究方法。
                就业前景：随着用户体验的重视度增加，对界面设计师的需求也在增加。

                5.技术支持工程师：

                职责：解决用户或客户的技术问题和支持需求。
                技能要求：良好的问题诊断和解决能力；能够有效沟通和客户服务。
                就业前景：在软件产品发布后，技术支持是确保客户满意度的重要部分，因此需求稳定。</pre>
        </div>
    </div>
    <%@include file="footer.jsp"%>
</div>
</body>
</html>
