<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021/3/19
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <%@include file="common/easyui.jsp" %>
    <title>Title</title>
</head>
<body>

<form action="">
    用户名：<input type="text" id="username"> <br/>
    年龄：<input type="text" id="age"> <br/>
    搜索：<input type="text" id="keywords"> <br/>
</form>
<script>

    /*textbox插件*/

    $('#username').textbox({
        required:true,       //设置为必填项
        missingMessage:"不能为空！",
        //设置验证规则   validType:       可以填一个值或者是数组
            validType:['email','length[5,10]'],    //设置必须为邮箱格式，并且长度要在5-10之间
    });

    $('#keywords').textbox({
        buttonText:'搜索',  //  写了此属性buttonText后就会变成一个搜索框
        buttonIcon:'icon-search',
        onClickButton:function () {   //点击button时执行的函数
            
        },

    })

</script>


</body>
</html>
