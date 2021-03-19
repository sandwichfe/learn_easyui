<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021/3/19
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <%@include file="common/easyui.jsp"%>
    <title>Title</title>
</head>
<body>

<div id="t1">
    <a href="#" class="easyui-linkbutton " >按钮一</a>

    <a href="#" class="easyui-linkbutton " >按钮二</a>

</div>

<div id="t2">
    <a href="#" class="easyui-linkbutton " >确定</a>

    <a href="#" class="easyui-linkbutton " >取消</a>

</div>


    <div id="dl">
        <form action="">
                <legend align="center"> 登录</legend>
                <table>
                    <tr>
                        <td>用户名</td>
                        <td><input type="text" ></td>
                    </tr>
                    <tr>
                        <td>密码</td>
                        <td><input type="text"></td>
                    </tr>
                </table>
        </form>
        
        
        
    </div>

    <script>
        $('#dl').dialog({
            title:"标题",
            iconCls:"icon-man",
            width:300,
            left:750,
            top:250,
            modal:false,
            //toolbar:'#t1',        //添加按钮显示在dialog上面
            buttons:"#t2",      //在对话框的底部显示 添加按钮
        })



    </script>
</body>
</html>
