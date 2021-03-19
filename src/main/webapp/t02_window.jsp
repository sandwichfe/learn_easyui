<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021/3/19
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <%@include file="common/easyui.jsp" %>
    <title>Title</title>
</head>
<body>
    <div id="div1"></div>


    <script>
        /*window窗口*/

        $('#div1').window({
            title:"标题",
            iconCls:"icon-man",
            width:400,
            height:400,
            //将一个网页的内容显示到此window
            //href:"${pageContext.request.contextPath}/index.jsp",

            //当此值开启后，页面内除了此窗口其他内容将会不可点击，直到此窗口消失
            modal:false,

        })
    </script>
</body>
</html>
