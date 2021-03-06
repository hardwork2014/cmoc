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
	<body class="bc-fff">
		<header class="header">陶学趣</header>
		<div class="mui-content">
			<div class="head_bg">
				<img src="<%=basePath %>/images/home_bg.png">
				<div class="head_img">
					<img src="${userInfo.headimgurl }">
					<p class="name">
						${userInfo.nickname }
					</p>
				</div>
			</div>
		    <ul class="mui-table-view mb10" style="color: #614b4b;">
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/bind">
	                   用户绑定
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/live">
	                     直播中心
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/points">
	                     学习积分
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/buyRecord">
	                     购买记录
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="<%=basePath%>/user/collection">
	                     个人收藏
	                </a>
	            </li>
	            <li class="mui-table-view-cell">
	                <a class="mui-navigate-right" href="http://mp.weixin.qq.com/s/F4eDKmVwmYXGCtubGVUrMw">
	                     关于我们
	                </a>
	            </li>
	        </ul>
		</div>
		<jsp:include page="/WEB-INF/page/common/_footer.jsp" />
		<script type="text/javascript">
			var snsToken = '${snsToken}';
			setAccessToken(snsToken);
		</script>
</body>

</html>
