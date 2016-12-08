<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人中心[陶学趣]</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	</head>
	<jsp:include page="/WEB-INF/page/common/_header.jsp" />
	<body>
		<div class="mui-content">
		    <div class="regTMHeader" style="background-color: #25C26D;">
				<img src="${userInfo.headimgurl }" class="regTMPic"><br>
				<span style="line-height: 20px; color: white;">${userInfo.nickname }</span><br>
			</div>
		    <ul class="mui-table-view mb10">
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/bind?id=${userInfo.openid}">
	                   用户绑定
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/live?id=openid">
	                     直播中心
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/points?id=${userInfo.openid}">
	                     学习积分
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/buyRecord?id=${userInfo.openid}">
	                     购买记录
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/collection?id=${userInfo.openid}">
	                     个人收藏
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/about">
	                     关于我们
	                </a>
	            </li>
	        </ul>
		</div>
		
		<script type="text/javascript">
			mui.init();
			mui('.footer').on('tap','a',function(){document.location.href=this.href;});
			var snsToken = '${snsToken}';
			setAccessToken(snsToken);
		</script>
</body>

</html>
