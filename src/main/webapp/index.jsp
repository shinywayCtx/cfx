<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<%@ include file="/common/common.jsp"%> 
 
 
<link rel="stylesheet" type="text/css" href="css/index.css"/>  


</head>
<body>
	<div class="loginDiv">

		<form class="form-horizontal" action="<%=cfx%>base/login.do" method='post'>
			<h3>协同业务办公系统</h3>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon userAddon">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					</div>
					<input type="text" class="form-control username" placeholder="用户名"  name='userAccount' value='admin'>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon paswdAddon">
						<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
					</div>
					<input type="password" class="form-control pswdInput" name="password" placeholder="密码" value='ctx13107'>
				</div>
			</div>
			<div class="bottomBtn">
				<input type="submit" class="btn btn-info" value="登陆">
			</div>
		</form>
	</div>
</body>
</html>