<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <link href="<%=path%>/static/H+/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/static/H+/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="fixed-left">
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInRight">
            <div class="col-sm-4">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>个人资料</h5>
                    </div>
                    <div>
                        <div class="ibox-content no-padding border-left-right">
                            <img alt="image" class="img-responsive" src="<%=path%>/static/H+/img/profile_big.jpg">
                        </div>
                        <div class="ibox-content profile-content">
                            <h4><strong> 昵称:${user.nickname}</strong></h4>
                            <p><i class="fa fa-map-marker"></i> 河北省张家口市</p>
                            <h5>
                                    关于我
                                </h5>
                            <p>
                               今日事，今日毕
                            </p>                                             
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>最新动态</h5>                    
                    </div>
                    <div class="ibox-content">

                        <div>
                            <div class="feed-activity-list">

                                <div class="feed-element">
                                    <a href="profile.html#" class="pull-left">
                                        <img alt="image" class="img-circle" src="<%=path%>/static/H+/img/a1.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right text-navy">1天前</small>
                                        <strong>开发即时通讯工具</strong>.
                                        <br>  
                                    </div>
                                </div>
                            </div>

                            <button class="btn btn-primary btn-block m"><i class="fa fa-arrow-down"></i> 显示更多</button>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>


</body>

</html>
