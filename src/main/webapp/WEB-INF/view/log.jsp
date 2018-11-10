<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <link href="<%=path%>/static/H+/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- jqgrid-->
    <link href="<%=path%>/static/H+/css/plugins/jqgrid/ui.jqgrid.css?0820" rel="stylesheet">

    <link href="<%=path%>/static/H+/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/style.css?v=4.1.0" rel="stylesheet">

   

</head>
<body class="fixed-left">

    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    
                    <div class="ibox-content">
           
                    
                        <h4 class="m-t">系统日志</h4>


                        <div class="jqGrid_wrapper">
                            <table id="table_list_2"></table>
                            <div id="pager_list_2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 全局js -->
    <script src="<%=path%>/static/H+/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=path%>/static/H+/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- Peity -->
    <script src="<%=path%>/static/H+/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- jqGrid -->
    <script src="<%=path%>/static/H+/js/plugins/jqgrid/i18n/grid.locale-cn.js?0820"></script>
    <script src="<%=path%>/static/H+/js/plugins/jqgrid/jquery.jqGrid.min.js?0820"></script>

    <!-- 自定义js -->
    <script src="<%=path%>/static/H+/js/content.js?v=1.0.0"></script>

    <!-- Page-Level Scripts -->
 <script type="text/javascript">
 $(function(){ 
		$.ajax({
			  type: 'POST',
			  url :'<%=path%>/log/log',
			  data: "",
			  dataType: "json",
			  success:function(data){ 
				  //alert(data.length)
				  $.jgrid.defaults.styleUI = 'Bootstrap';          
		            // Configuration for jqGrid Example 2
		            $("#table_list_2").jqGrid({
		                data: data,
		                datatype: "local",
		                height: 400,
		                autowidth: true,
		                shrinkToFit: true,
		                rowNum: 10,
		                rowList: [10, 20, 30],
		                colNames: ['ID', '用户名', '时间', '类型', '详情'],
		                colModel: [
		                    {
		                        name: 'id',
		                        index: 'id',
		                        editable: true,
		                        width: 100,
		                       
		                    },
		                    {
		                        name: 'userid',
		                        index: 'userid',
		                        editable: true,
		                        width: 30,
		                       
		                    },
		                    {
		                        name: 'time',
		                        index: 'time',
		                        editable: true,
		                        width: 80
		                    },
		                    {
		                        name: 'type',
		                        index: 'type',
		                        editable: true,
		                        width: 30,
		                       
		                    },
		                    {
		                        name: 'detail',
		                        index: 'detail',
		                        editable: true,
		                        width: 80,
		                       
		                    }
		                ],
		                pager: "#pager_list_2",
		                viewrecords: true,
		                caption: "系统日志",
		                add: true,
		                edit: true,
		                addtext: 'Add',
		                edittext: 'Edit',
		                hidegrid: false
		            });

		            // Add selection
		            $("#table_list_2").setSelection(4, true);

		            // Setup buttons
		            $("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
		                edit: true,
		                add: true,
		                del: true,
		                search: true
		            }, {
		                height: 200,
		                reloadAfterSubmit: true
		            });

		            // Add responsive to jqGrid
		            $(window).bind('resize', function () {
		                var width = $('.jqGrid_wrapper').width();		                
		                $('#table_list_2').setGridWidth(width);
		            });			
	          }
			  
			});
	}) 
    </script>
</body>
</html>

