<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="UTF-8"%>
<%@ include file="head.txt"%>
<%@ include file="homepage.txt"%>
<style>
body {
	background:
		url(image/homepage.jpg);
	background-size: 100% 100%;
}
#apDiv1 {
	position: absolute;
	width: 912px;
	height: 115px;
	z-index: 1;
	left: 620px;
	top: 602px;
}
</style>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

</head>


<Body bgcolor=#66FFAA><center>
  <p><BR>
  </p>
  <p>&nbsp;</p>
   <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="800" height="80" border=10 class="font">
    <tr>

    <th width="155" height="80">比赛类型</th>    
    <th width="144">比赛地点</th>
    <th width="155">目前人数</th>
    <th width="155">人数限制</th>
    <th width="174">比赛难度</th>
    <th width="174">比赛日期</th>
    <td width="155"><font color=blue>是否删除</font> </td>
  </tr>
 <s:iterator value="#request['joinmatch']" var="match">
				<tr>
					<td><s:property value="#match.matchType" /></td>
					<td><s:property value="#match.matchAddress" /></td>
					<td><s:property value="#match.matchJoinnum" /></td>
					<td><s:property value="#match.matchLimit" /></td>
					<td><s:property value="#match.matchDifficulty" /></td>
					<td><s:property value="#match.matchDate" /></td>
					<td>
						<form action="" method="post">
							<input type="hidden" name="matchId" value="<s:property value="#match.matchId" />">
							<input type="submit" id="joinMatchButton" value="是否退出"
								 onclick="javaScript:alert('您确定要退出吗？')">
						</form>
					</td>
				</tr>
			</s:iterator>
 </table>
  <p>
  <BR>
  	<div>
			<s:set value="#request.joinpager" var="joinpager"></s:set>
			<s:if test="#joinpager.hasFirst">
				<a href="getJoinMatchPaging.action?currentPage=1"> 首页</a>
			</s:if>
			<s:if test="#joinpager.hasPrevious">
				<a
					href="getJoinMatchPaging.action?currentPage=<s:property value="#joinpager.currentPage-1"/>">
					上一页 </a>
			</s:if>
			<s:if test="#joinpager.hasNext">
				<a
					href="getJoinMatchPaging.action?currentPage=<s:property value="#joinpager.currentPage+1"/>">
					下一页 </a>
			</s:if>
			<s:if test="#joinpager.hasLast">
				<a
					href="getJoinMatchPaging.action?currentPage=<s:property value="#joinpager.totalPage"/>">
					尾页 </a>
			</s:if>
			<br> 当前第
			<s:property value="#joinpager.currentPage" />
			页，总共
			<s:property value="#joinpager.totalPage" />
			页
		</div>
</BODY>

</html>

