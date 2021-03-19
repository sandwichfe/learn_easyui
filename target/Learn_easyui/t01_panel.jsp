<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <%--引入一个专门来加载easyui相关css/js的jsp文件--%>
    <%@include file="common/easyui.jsp" %>
</head>
<body>

<%--准备一个按钮   此按钮是用于被添加进表格的   记得按钮外面要套一层div--%>
<div id="tt"><a href="#" class="easyui-linkbutton"  data-options="iconCls: 'icon-ok'">1111</a></div>

<div class="easyui-panel" id="panel1" >面板</div>


<script>

    /*生成一个panel*/
    $("#panel1").panel({
        title:'标题',
        iconCls:'icon-man',
        width:300,           //面板宽度和高度
        height:300,
        left:500,
        minimizable:true,   //是否显示最小化按钮
        maximizable:true,   //是否显示最小大化按钮
        closable:true,      //是否显示关闭按钮,
        //添加一个按钮进表盘
        tools:'#tt',
        //可以将一个页面中的内容显示进此表盘
        //href:"${pageContext.request.contextPath}/index.jsp",
    })

</script>
</body>
</html>
