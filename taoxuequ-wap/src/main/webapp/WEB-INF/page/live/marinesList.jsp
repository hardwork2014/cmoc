<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<title>战队列表-陶学趣</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	</head>
	<jsp:include page="/WEB-INF/page/common/_header.jsp" />
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
		    <h1 class="mui-title">战队列表</h1>
		</header>
		<jsp:include page="/WEB-INF/page/common/head.jsp" />
		<div class="mui-content">
			<div class="banner pr">
				<img src="<%=basePath %>/images/slider2.jpg">
				<div class="marines-banner-title">
					<div class="marines-banner-title1">${activity.activityNum }</div>
					<div class="marines-banner-title2"><fmt:formatDate value='${activity.startDate}' pattern='yyyy-MM-dd' /> | ${activity.activityTypeValue}</div>
				</div>
			</div>
		    <div class="pb10 marines-list">
			    <ul class="mui-table-view">
			    	<c:if test="${marines == null || marines.isEmpty()}">
			    		<p style="padding: 10px 10px;">暂无战队列表信息</p>
			    	</c:if>
			    	<c:forEach var="itm" items="${marines }">
			    		<li class="mui-table-view-cell mui-media">
			            <a href="<%=basePath %>/live/marine/detail/${itm.id}">
			                <img class="mui-media-object mui-pull-left" src="<%=basePath %>/images/text.png">
			                <div class="mui-media-body">
			                    <div class="marines-list-lev1">${itm.marineName }</div>
			                    <div class="marines-list-lev2">${itm.lineName }</div>
			                </div>
			            	<span class="mui-badge mui-badge-inverted">${itm.votes}票</span>
			            </a>
			        </li>
			    	</c:forEach>
			    </ul>
		    </div>
		</div>
		
		<script type="text/javascript">
			mui.init();
			mui('.footer').on('tap','a',function(){document.location.href=this.href;});
			
		</script>
	</body>

</html>