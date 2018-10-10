<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/9
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/TableExport-3.3.13/src/stable/css/tableexport.css">
    <link rel="stylesheet" href="dist/bootstrap-table.css">
    <script src="/JS/jquery-1.10.2.min.js"></script>
    <script src="/js-xlsx-master/xlsx.core.js"></script>
    <script src="/Blob.js-master/Blob.js"></script>
    <script src="/FileSaver.js-master/FileSaver.js"></script>
    <script src="/TableExport-3.3.13/src/stable/js/tableexport.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="dist/bootstrap-table.min.js"></script>
    <script src="dist/extensions/export/bootstrap-table-export.min.js"></script>
    <script src="dist/locale/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript">
        $(function(){
            //$("#btnExport").click(function(){
            /*$('#tb_departments').tableExport({
                type:'excel',
                escape:'false',
                fileName: '采集表table'
            });

            $("table").before($("button"));*/
            //});

            $('#tb_departments').bootstrapTable({
                url: 'show.do',         //请求后台的URL（*）
                method: 'get',                      //请求方式（*）
                striped: true,                      //是否显示行间隔色
                sortOrder: "asc",                   //排序方式
//                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber:1,                       //初始化加载第一页，默认第一页
                pagination: true,                   //是否显示分页（*）
                pageSize:3,                       //每页的记录行数（*）
                pageList: [3, 5, 8, 10],        //可供选择的每页的行数（*）
                minimumCountColumns: 2,             //最少允许的列数
                uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                height: 500,
                cardView: false,                    //是否显示详细视图
                detailView: false,                   //是否显示父子表
                showExport: true,                     //是否显示导出
                exportDataType: "basic",              //basic', 'all', 'selected'.
                columns: [{
                    field: 'id',
                    title: 'ID'
                }, {
                    field: 'adress',
                    title: '居住地'
                },{
                    field: 'tel',
                    title: '电话'
                }, {
                    field: 'name',
                    title: '姓名'
                }, {
                    field: 'major',
                    title: '专业'
                },{
                    field: 'education',
                    title: '学历'
                },],
            });
        })
    </script>
</head>
<body>

    <!-- dialog end-->
    <%--<nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" style="margin:0 0 10px 0">
                    <img alt="Master" src="#" >
                </a>
            </div>
        </div>
    </nav>--%>
    <!-- <button class="btn btn-default" id="btnExport">批量导出</button> -->
    <table id="tb_departments" class="table table-hover">
        <%--<tr>
            <td class="active">居住地</td>
            <td class="success">电话</td>
            <td class="warning">姓名</td>
            <td class="active">专业</td>
            <td class="success">学历</td>
        </tr>
        &lt;%&ndash;<c:if test="${empty requestScope.users}">
            <tr>
                <td colspan="16">没有数据谢谢</td>
            </tr>
        </c:if>
        <c:if test="${!empty requestScope.users}">
            <c:forEach items="${requestScope.users }" var="user">&ndash;%&gt;
                <tr>
                    <td class="active">上海</td>
                    <td class="success">110</td>
                    <td class="warning">李四</td>
                    <td class="active">Java</td>
                    <td class="success">培训</td>
                </tr>
        <tr>
            <td class="active">北京</td>
            <td class="success">120</td>
            <td class="warning">张三</td>
            <td class="active">Java</td>
            <td class="success">培训</td>
        </tr>
        <tr>
            <td class="active">广州</td>
            <td class="success">119</td>
            <td class="warning">王五</td>
            <td class="active">Java</td>
            <td class="success">培训</td>
        </tr>
        <tr>
            <td class="active">上海</td>
            <td class="success">110</td>
            <td class="warning">李四</td>
            <td class="active">Java</td>
            <td class="success">培训</td>
        </tr>
        <tr>
            <td class="active">上海</td>
            <td class="success">110</td>
            <td class="warning">李四</td>
            <td class="active">Java</td>
            <td class="success">培训</td>
        </tr>
        <tr>
            <td class="active">上海</td>
            <td class="success">110</td>
            <td class="warning">李四</td>
            <td class="active">Java</td>
            <td class="success">培训</td>
        </tr>
        <tr>
            <td class="active">上海</td>
            <td class="success">110</td>
            <td class="warning">李四</td>
            <td class="active">Java</td>
            <td class="success">培训</td>
        </tr>
            &lt;%&ndash;</c:forEach>
        </c:if>&ndash;%&gt;--%>
    </table>
</body>
</html>
