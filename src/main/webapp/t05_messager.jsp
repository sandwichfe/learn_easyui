<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021/3/19
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <%@include file="common/easyui.jsp" %>
    <title>Title</title>
</head>
<body>


<%--我看完太秀了   原来是a 的href为空白  点击后本来应该弹消息框的由于a标签的href结果导致一闪而过--%>
<a href="#" class="easyui-linkbutton " data-options="onClick:test1">弹出消息框</a>

<a href="#" class="easyui-linkbutton " data-options="onClick:test2">弹出警告框</a>

<a href="#" class="easyui-linkbutton " data-options="onClick:test3">弹出确认框</a>


<script>



    function test1() {
        $.messager.show({
            title:"fds",
            showSpeed: 800,    //消息框动画出现的速度  设置800ms
            timeout:1000,       //messager消息框持续的时间。
            showType: 'fade',     //设置消息框为淡入淡出效果
            msg:"messager提示信息"
        });

    }
/*警告框*/
    function test2() {
        $.messager.alert({
            title:"fds",
            showSpeed: 800,    //消息框动画出现的速度  设置800ms
            timeout:1000,       //messager消息框持续的时间。
            showType: 'fade',     //设置消息框为淡入淡出效果
            msg:"messager提示信息",
            fn:function (){      //点击确定按钮后执行的函数
                console.log("窗口关闭了")
            }
        });

    }

    /*弹出确认框*/
    function test3() {
        $.messager.confirm({
            title:"是否确认操作",
            msg:"确定吗",
            fn:function (r){    //用户选择确定或者取消后 会传一个true或false 进来

                if(r){
                    alert("选择了确定")
                }else {
                    alert("选择了取消")
                }
            }
        });

    }


</script>


</body>
</html>
