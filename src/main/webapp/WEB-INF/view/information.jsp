<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
   <link href="<%=path%>/static/H+/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="<%=path%>/static/H+/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="fixed-left">
    <div class="row">
        <div class="col-sm-12">
            <div class="wrapper wrapper-content animated fadeInUp">
                <ul class="notes">                 
                    <li>
                        <div>
                            <small>2018年11月06日(星期二) 下午5:31</small>
                            <h4>开发即时聊天工具</h4>
                            <p>框架为Spring + Spring MVC + Mybatis</p>
                           <!--  <a href="pin_board.html#"><i class="fa fa-trash-o "></i></a> -->
                        </div>
                    </li>                  
                </ul>
            </div>
        </div>
    </div>
</body>

</html>
