<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html>

<head>
    <title>关于</title>
    <link href="<%=path%>/static/H+/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="<%=path%>/static/H+/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="fixed-left">
    <div class="wrapper wrapper-content animated fadeIn">
        <div class="row">
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>所用技术</h5>
                       
                    </div>
                    <div class="ibox-content">
                        <div class="alert alert-success">
                            整理框架：SSM，即Spring + Spring MVC + Mybatis
                        </div>
                        <div class="alert alert-info">
                            通讯使用的是websocket
                        </div>
                        <div class="alert alert-warning">
                           数据库使用的是Mysql版
                        </div>
                        <div class="alert alert-danger">
                            前端框架采用的是:H+是一个很棒的后台UI框架 
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>关于作者</h5>                       
                    </div>
                    <div class="ibox-content">
                        <div class="alert alert-danger">
                            
                           Github地址：<a class="alert-link" href="https://github.com/westlifeyang/" target="_blank">https://github.com/westlifeyang/</a>                    
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
       
    </div>
</body>

</html>
