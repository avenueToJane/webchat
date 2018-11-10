<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
	<head>
		<link href="<%=path%>/static/H+/css/style.css?v=4.1.0" rel="stylesheet">
		<link rel="stylesheet" href="<%=path%>/static/weixin/css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=path%>/static/weixin/css/main.css" />
		<link href="<%=path%>/static/H+/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
		<jsp:include page="include/commonfile.jsp"/>
    <script src="<%=path%>/static/plugins/sockjs/sockjs.js"></script>
	</head>
<body class="fixed-left">
		
			<div class="wechat">
				
				<div class="sidestrip">
					<div class="am-dropdown" data-am-dropdown>
						<!--头像插件-->
						<div style="background-size:34px; width: 34px;height: 34px;margin-left: 13px;border-radius: 2px;" class="am-dropdown-toggle"><img src="<%=path%>/static/weixin/images/head/${user.profilehead}" alt="" /></div>
						<div class="am-dropdown-content">
					    	<div class="own_head_top">
					    		<div class="own_head_top_text">
					    			<p class="own_name">彭于晏丶plus<img src="<%=path%>/static/weixin/images/head/${user.profilehead}" alt="" /></p>
					    			<p class="own_numb">微信号：jsk8787682</p>
					    		</div>
					    		<img src="<%=path%>/static/weixin/images/head/${user.profilehead}" alt="" />
					    	</div>
					    	<div class="own_head_bottom">
					    		<p><span>地区</span>江西 九江</p>
					    		<div class="own_head_bottom_img">
					    			<a href=""><img src="<%=path%>/static/weixin/images/icon/head_1.png"/></a>
					    			<a href=""><img src="<%=path%>/static/weixin/images/icon/head_2.png"/></a>
					    		</div>
					    	</div>
					  	</div>
					</div>
					<!--三图标-->
				  	<div class="sidestrip_icon">
				  		<a id="si_1" style="background: url(<%=path%>/static/weixin/images/icon/head_2_1.png) no-repeat;"></a>
				  		<a id="si_2"></a>
				  		<a id="si_3"></a>
				  		<a class="fa fa-android fa-2x" id="si_4"></a>
				  	</div>
				  	
				  	<!--底部扩展键-->
				  	<div id="doc-dropdown-justify-js">
				  		<div class="am-dropdown" id="doc-dropdown-js" style="position: initial;">
					  		<div class="sidestrip_bc am-dropdown-toggle"></div>
					  	    <ul class="am-dropdown-content" style="">
							    <li>
							    	<a href="#" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0, width: 400, height: 225}">意见反馈</a>
							    	<div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
									  <div class="am-modal-dialog">
									    <div class="am-modal-hd">Modal 标题
									      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
									    </div>
									    <div class="am-modal-bd">
									      Modal 内容。本 Modal 无法通过遮罩层关闭。
									    </div>
									  </div>
									</div>
							    </li>
							    
							    <li><a href="#">备份与恢复</a></li>
							    <li><a href="#">设置</a></li>
						    </ul>
					    </div>	
					</div>	
				</div>
				
				<!--聊天列表-->
				<div class="middle on">
					<div class="wx_search">
						在线人数：<span id="onlinenum"></span>
						<input type="text" placeholder="搜索"/>
						<button>+</button>
					</div>
					<div class="office_text">
					
						<ul class="user_list" id="list">
							<%--  <li class="user_active">
								<div class="user_head"><img src="<%=path%>/static/weixin/images/head/15.jpg"/></div>
								<div class="user_text">
									<p class="user_name">早安无恙</p>
									<p class="user_message">我是傻逼！，金少凯牛逼！</p>
								</div>
								<div class="user_time">下午 2：54</div>
							</li>  --%>
							
						</ul>
					</div>	
				</div>
			    
			    <!--好友列表-->
				<div class="middle">
					<div class="wx_search">
						<input type="text" placeholder="搜索"/>
						<button>+</button>
					</div>
					<div class="office_text">
						<ul class="friends_list">
							<li>
								<p>新的朋友</p>
								<div class="friends_box">
									<div class="user_head"><img src="<%=path%>/static/weixin/images/head/1.jpg"/></div>
									<div class="friends_text">
										<p class="user_name">新的朋友</p>
									</div>
								</div>
							</li>
							<li>
								<p>公众号</p>
								<div class="friends_box">
									<div class="user_head"><img src="<%=path%>/static/weixin/images/head/2.jpg"/></div>
									<div class="friends_text">
										<p class="user_name">公众号</p>
									</div>
								</div>
							</li>
							<li>
								<p>A</p>
								<div class="friends_box">
									<div class="user_head"><img src="<%=path%>/static/weixin/images/head/3.jpg"/></div>
									<div class="friends_text">
										<p class="user_name">彭于晏丶plus</p>
									</div>
								</div>
								<div class="friends_box">
									<div class="user_head"><img src="<%=path%>/static/weixin/images/head/4.jpg"/></div>
									<div class="friends_text">
										<p class="user_name">陈依依</p>
									</div>
								</div>
								<div class="friends_box">
									<div class="user_head"><img src="<%=path%>/static/weixin/images/head/5.jpg"/></div>
									<div class="friends_text">
										<p class="user_name">毛毛</p>
									</div>
								</div>
							</li>
							
							
						</ul>
					</div>	
				</div>
				
				<!--程序列表-->
				<div class="middle">
					<div class="wx_search">
						<input type="text" placeholder="搜索收藏内容"/>
						<button>+</button>
					</div>
					<div class="office_text">
						<ul class="icon_list">
							<li class="icon_active">
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon.png" alt="" /></div>
								<span>全部收藏</span>
							</li>
							<li>
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon1.png" alt="" /></div>
								<span>链接</span>
							</li>
							<li>
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon2.png" alt="" /></div>
								<span>相册</span>
							</li>
							<li>
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon3.png" alt="" /></div>
								<span>笔记</span>
							</li>
							<li>
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon4.png" alt="" /></div>
								<span>文件</span>
							</li>
							<li>
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon5.png" alt="" /></div>
								<span>音乐</span>
							</li>
							<li>
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/icon6.png" alt="" /></div>
								<span>标签</span>
							</li>
						</ul>
					</div>	
				</div>
				<!--机器人列表-->
				<div class="middle">
					<ul class="icon_list">
							<li class="icon_active">
								<div class="icon"><img src="<%=path%>/static/weixin/images/icon/head_3.png" alt="" /></div>
								<span>机器人</span>  <button class="am-btn am-btn-xs am-btn-danger" id="tuling" data-am-button>未上线</button>
							</li>
							</ul>	
				</div>
			
				<!--聊天窗口-->
				<div class="talk_window">
					<div class="windows_top">
						<div class="windows_top_box">
							<span id="wrintIng"></span><!-- 正在回复 -->
							<ul class="window_icon">
								<li><a href=""><img src="<%=path%>/static/weixin/images/icon/icon7.png"/></a></li>
								<li><a href=""><img src="<%=path%>/static/weixin/images/icon/icon8.png"/></a></li>
								<li><a href=""><img src="<%=path%>/static/weixin/images/icon/icon9.png"/></a></li>
								<li><a href=""><img src="<%=path%>/static/weixin/images/icon/icon10.png"/></a></li>
							</ul>
							<div class="extend" class="am-btn am-btn-success" data-am-offcanvas="{target: '#doc-oc-demo3'}"></div>
							<!-- 侧边栏内容 -->
							<div id="doc-oc-demo3" class="am-offcanvas">
							    <div class="am-offcanvas-bar am-offcanvas-bar-flip">
								    <div class="am-offcanvas-content">
								    	<p><a href="http://music.163.com/#/song?id=385554" target="_blank">网易音乐</a></p>
								    </div>
							    </div>
							</div>
						</div>
					</div>
					
					<!--聊天内容-->
					<div class="windows_body">
						<div class="office_text" style="height: 100%;"  id="chat-view" >
							<ul class="content" id="chatbox">
								<%-- <li class="me"><img src="<%=path%>/static/weixin/images/own_head.jpg" title="金少凯"><span>疾风知劲草，板荡识诚臣</span></li>
								<li class="other"><img src="<%=path%>/static/weixin/images/head/15.jpg" title="张文超"><span>勇夫安知义，智者必怀仁</span></li> --%>
							</ul>
						</div>
					</div>
					
					<div class="windows_input" id="talkbox">
						<div class="input_icon">
							<a href="javascript:;"></a>
							<a href="javascript:;"></a>
							<a href="javascript:;"></a>
							<a href="javascript:;"></a>
							<a href="javascript:;"></a>
							<a href="javascript:;"></a>
						</div>
						<div class="input_box">
							<textarea name="message" id="message" rows="" cols="" id="input_box"></textarea>
							<button id="send" onclick="sendMessage()">发送（S）</button>
						</div>
					</div>
			<!-- 接收者 -->
            <div class="" style="float: left">
                <p class="am-kai">发送给 : <span id="sendto">全体成员</span><button class="am-btn am-btn-xs am-btn-danger" onclick="$('#sendto').text('全体成员')">复位</button></p>
            </div>
					<!-- 按钮区 -->
            <div class="am-btn-group am-btn-group-xs" style="float:right;">
                <button class="am-btn am-btn-default" type="button" onclick="getConnection()"><span class="am-icon-plug"></span> 连接</button>
                <button class="am-btn am-btn-default" type="button" onclick="closeConnection()"><span class="am-icon-remove"></span> 断开</button>
                <button class="am-btn am-btn-default" type="button" onclick="checkConnection()"><span class="am-icon-bug"></span> 检查</button>
                <button class="am-btn am-btn-default" type="button" onclick="clearConsole()"><span class="am-icon-trash-o"></span> 清屏</button>
                
            </div>
				</div>
			
		</div>
		
		
		
	<script type="text/javascript" src="<%=path%>/static/weixin/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/weixin/js/amazeui.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/weixin/js/zUI.js"></script>
	<script type="text/javascript" src="<%=path%>/static/weixin/js/wechat.js"></script>
	
	<script type="text/javascript">
		//三图标
		window.onload=function(){
			function a(){
				var si1 = document.getElementById('si_1');
				var si2 = document.getElementById('si_2');
				var si3 = document.getElementById('si_3');
				si1.onclick=function(){
					si1.style.background="url(<%=path%>/static/weixin/images/icon/head_2_1.png) no-repeat"
					si2.style.background="";
					si3.style.background="";					
				};
				si2.onclick=function(){
					si2.style.background="url(<%=path%>/static/weixin/images/icon/head_3_1.png) no-repeat"
					si1.style.background="";
					si3.style.background="";
				};
				si3.onclick=function(){
					si3.style.background="url(<%=path%>/static/weixin/images/icon/head_4_1.png) no-repeat"
					si1.style.background="";
					si2.style.background="";
				};
			};
			<%-- function b(){
				var text = document.getElementById('input_box');
				var chat = document.getElementById('chatbox');
				var btn = document.getElementById('send');
				var talk = document.getElementById('talkbox');
				btn.onclick=function(){
					if(text.value ==''){
			            alert('不能发送空消息');
			        }else{
						chat.innerHTML += '<li class="me"><img src="'+'<%=path%>/static/weixin/images/own_head.jpg'+'"><span>'+text.value+'</span></li>';
						text.value = '';
						chat.scrollTop=chat.scrollHeight;
						talk.style.background="#fff";
						text.style.background="#fff";
					};
				};
			}; --%>
			a();
			//b();
		};
//  聊天区控制开始========================
	    $(function () {
	        context.init({preventDoubleContext: false});
	        context.settings({compress: true});
	        context.attach('#chat-view', [
	            {header: '操作菜单',},
	            {text: '清理', action: clearConsole},
	            {divider: true},
	            {
	                text: '选项', subMenu: [
	                {header: '连接选项'},
	                {text: '检查', action: checkConnection},
	                {text: '连接', action: getConnection},
	                {text: '断开', action: closeConnection}
	            ]
	            },
	            {
	                text: '销毁菜单', action: function (e) {
	                e.preventDefault();
	                context.destroy('#chat-view');
	            }
	            }
	        ]);
	    });
	    if("${message}"){
	        layer.msg('${message}', {
	            offset: 0
	        });
	    }
	    if("${error}"){
	        layer.msg('${error}', {
	            offset: 0,
	            shift: 6
	        });
	    }
	    $("#tuling").click(function(){
	        var onlinenum = $("#onlinenum").text();
	        if($(this).text() == "未上线"){
	            $(this).text("已上线").removeClass("am-btn-danger").addClass("am-btn-success");
	            showNotice("图灵机器人加入聊天室");
	            $("#onlinenum").text(parseInt(onlinenum) + 1);
	        }
	        else{
	            $(this).text("未上线").removeClass("am-btn-success").addClass("am-btn-danger");
	            showNotice("图灵机器人离开聊天室");
	            $("#onlinenum").text(parseInt(onlinenum) - 1)
	        }
	    });
	    var wsServer = null;
	    var ws = null;
	    wsServer = "ws://" + location.host+"${pageContext.request.contextPath}" + "/chatServer";
	    ws = new WebSocket(wsServer); //创建WebSocket对象
	    ws.onopen = function (evt) {
	        layer.msg("已经建立连接", { offset: 0});
	    };
	    ws.onmessage = function (evt) {
	    	
	        analysisMessage(evt.data);  //解析后台传回的消息,并予以展示
	        
	    };
	    ws.onerror = function (evt) {
	        layer.msg("产生异常", { offset: 0});
	    };
	    ws.onclose = function (evt) {
	        layer.msg("已经关闭连接", { offset: 0});
	    };

	    /**
	     * 连接
	     */
	    function getConnection(){
	        if(ws == null){
	            ws = new WebSocket(wsServer); //创建WebSocket对象
	            ws.onopen = function (evt) {
	                layer.msg("成功建立连接!", { offset: 0});
	            };
	            ws.onmessage = function (evt) {
	                analysisMessage(evt.data);  //解析后台传回的消息,并予以展示
	            };
	            ws.onerror = function (evt) {
	                layer.msg("产生异常", { offset: 0});
	            };
	            ws.onclose = function (evt) {
	                layer.msg("已经关闭连接", { offset: 0});
	            };
	        }else{
	            layer.msg("连接已存在!", { offset: 0, shift: 6 });
	        }
	    }

	    /**
	     * 关闭连接
	     */
	    function closeConnection(){
	        if(ws != null){
	            ws.close();
	            ws = null;
	            $("#list").html("");    //清空在线列表
	            layer.msg("已经关闭连接", { offset: 0});
	        }else{
	            layer.msg("未开启连接", { offset: 0, shift: 6 });
	        }
	    }

	    /**
	     * 检查连接
	     */
	    function checkConnection(){
	        if(ws != null){
	            layer.msg(ws.readyState == 0? "连接异常":"连接正常", { offset: 0});
	        }else{
	            layer.msg("连接未开启!", { offset: 0, shift: 6 });
	        }
	    }

	    /**
	     * 发送信息给后台
	     */
	    function sendMessage(){
	        if(ws == null){
	            layer.msg("连接未开启!", { offset: 0, shift: 6 });
	            return;
	        }
	        var message = $("#message").val();
	        var to = $("#sendto").text() == "全体成员"? "": $("#sendto").text();
	        if(message == null || message == ""){
	            layer.msg("请不要惜字如金!", { offset: 0, shift: 6 });
	            return;
	        }
	        $("#tuling").text() == "已上线"? tuling(message):console.log("图灵机器人未开启");  //检测是否加入图灵机器人
	        ws.send(JSON.stringify({
	            message : {
	                content : message,
	                from : '${userid}',
	                to : to,      //接收人,如果没有则置空,如果有多个接收人则用,分隔
	                time : getDateFull()
	            },
	            type : "message"
	        }));
	    }

	    /**
	     * 解析后台传来的消息
	     * "massage" : {
	     *              "from" : "xxx",
	     *              "to" : "xxx",
	     *              "content" : "xxx",
	     *              "time" : "xxxx.xx.xx"
	     *          },
	     * "type" : {notice|message},
	     * "list" : {[xx],[xx],[xx]}
	     */
	    function analysisMessage(message){
	    	//alert(message)
	        message = JSON.parse(message);
	        if(message.type == "message"){      //会话消息
	            showChat(message.message);
	        }
	        if(message.type == "notice"){       //提示消息
	            showNotice(message.message);
	        } 
	        if(message.list != null && message.list != undefined){      //在线列表
	            showOnline(message.list);
	        }
	    }

	    /**
	     * 展示提示信息
	     */
	    function showNotice(notice){
	        $("#chatbox").append("<div><p class=\"am-text-success\" style=\"text-align:center\"><span class=\"am-icon-bell\"></span> "+notice+"</p></div>");
	        var chat = $("#chat-view");
	        chat.scrollTop(chat[0].scrollHeight);   //让聊天区始终滚动到最下面
	    }

	    /**
	     * 展示会话信息
	     */
	    function showChat(message){
	    	var img=message.from+".jpg";
	    	var profilehead='${user.profilehead}';    	
	        var to = message.to == null || message.to == ""? "全体成员" : message.to;   //获取接收人
	        var isSef = '${userid}' == message.from ? "me" : "other";   //如果是自己则显示在右边,他人信息显示在左边	        
	        var html ="<li class=\ "+isSef+" \"><img src='${ctx}/static/weixin/images/head/"+img+"'\><span>"+message.content+"</span></li>";
	        //alert(html)
	        if('${userid}' == message.from){
	        	$("#wrintIng").text("等待回复...");
	        }  else{
	        	$("#wrintIng").text(message.from+"已经回复信息");
		       
	        }    
	        $("#chatbox").append(html);
	        $("#message").val("");  //清空输入区
	        var chat = $("#chat-view");
	        chat.scrollTop(chat[0].scrollHeight);   //让聊天区始终滚动到最下面
	        

	    }

	    /**
	     * 展示在线列表
	     */
	    function showOnline(list){
	    	//alert('${user.profilehead}')
	    	//var profilehead='${user.profilehead}';
	        $("#list").html("");    //清空在线列表	       
	       //var jiqi= "<li class=\"user_active\"> <div class=\"user_head\"><img src='${ctx}/static/weixin/images/head/admin.jpg'\></div><div class=\"user_text\"><p class=\"user_name\">机器人</p><button class=\"am-btn am-btn-xs am-btn-danger\" id=\"tuling\" data-am-button>未上线</button></div></li> ";
	       
	        //$("#list").html(jiqi);    //添加机器人
	        $.each(list, function(index, item){     //添加私聊按钮
	           /*  var li = "<li>"+item+"</li>"; */
	           var img=item+".jpg";
	            var li = "<li class=\"user_active\"> <div class=\"user_head\"><img src='${ctx}/static/weixin/images/head/"+img+"'\></div><div class=\"user_text\"><p class=\"user_name\">"+item+"</p></div><div class=\"user_time\">下午 2：54</div></li> ";
	            //alert(li)
	            if('${userid}' != item){    //排除自己
	            	li = "<li class=\"user_active\"> <div class=\"user_head\"><img src='${ctx}/static/weixin/images/head/"+img+"'\></div><div class=\"user_text\"><p class=\"user_name\">"+item+"</p></div><div class=\"user_time\">下午 2：54</div><button type=\"button\" class=\"am-btn am-btn-xs am-btn-primary am-round\" onclick=\"addChat('"+item+"');\"><span class=\"fa fa-phone\"><span> 私聊</button></li> ";
	            }
	            $("#list").append(li);
	        });
	        $("#onlinenum").text($("#list li").length);     //获取在线人数
	    }    
	    /**
	     * 图灵机器人
	     * @param message
	     */
	    function tuling(message){
	        var html;
	        $.getJSON("http://www.tuling123.com/openapi/api?key=6ad8b4d96861f17d68270216c880d5e3&info=" + message,function(data){
	            if(data.code == 100000){
	                html ="<li class=\"other\"><img src='${ctx}/static/weixin/images/head/10.jpg'/><span>"+data.text+"</span></li>";
	            }
	            if(data.code == 200000){
	                html ="<li class=\"other\"><img src='${ctx}/static/weixin/images/head/10.jpg'/><span>"+data.text+"</span></li>";
	            }
	            $("#chatbox").append(html);
	            var chat = $("#chat-view");
	            chat.scrollTop(chat[0].scrollHeight);
	            $("#message").val("");  //清空输入区
	        });
	    }

	    /**
	     * 添加接收人
	     */
	    function addChat(user){
	        var sendto = $("#sendto");
	        var receive = sendto.text() == "全体成员" ? "" : sendto.text() + ",";
	        if(receive.indexOf(user) == -1){    //排除重复
	            sendto.text(receive + user);
	        }
	    }

	    /**
	     * 清空聊天区
	     */
	    function clearConsole(){
	        $("#chatbox").html("");
	    }

	    function appendZero(s){return ("00"+ s).substr((s+"").length);}  //补0函数

	    function getDateFull(){
	        var date = new Date();
	        var currentdate = date.getFullYear() + "-" + appendZero(date.getMonth() + 1) + "-" + appendZero(date.getDate()) + " " + appendZero(date.getHours()) + ":" + appendZero(date.getMinutes()) + ":" + appendZero(date.getSeconds());
	        return currentdate;
	    }
	//  聊天区控制结束========================
	</script>
	</body>
</html>

