<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021/3/19
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>

    <!--  引入easyui的css代码  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/default/easyui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/themes/icon.css">

    <!--  引入easyui的js  注意引入的先后顺序，先引入jquer 再是easyui 再是ZH文件-->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',size:'large',onClick:clickOne">方式一</a>

<a id="btn1" href="#" class="easyui-linkbutton">方式二</a>


<script>
    //绑定btn1 也可达到同样的效果
    $("#btn1").linkbutton({
        //添加属性：  传了个对象进来了
        iconCls: 'icon-ok',
        text: 'hello',
        disabled: false,
        onClick: function () {                //  onclick 直接写进了属性栏       onclick: '函数名'
            //alert("easyui方式绑定点击函数")

            //调用改变大小的resize方法
            $("#btn1").linkbutton('resize',{width:75,height:75});
        }
    });

    function clickOne() {
        alert("方式一点击");
    }
</script>


<ul>
    <li>111</li>
    <li>222</li>
    <li>333</li>
</ul>

</body>
</html>
