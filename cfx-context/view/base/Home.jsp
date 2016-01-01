<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<%@ include file="/common/common.jsp"%> 
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>ERP</title>
 
 
	 
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
 
</head>
<body>
	<div class="centerBody">
		<header></header>
		 
		<div class="menuList">
			<a href="javascript:void()" class="logo">LOGO</a>
			<ul class="parentMenu">
				<li>
					<a href="javascript:void();"  class="liTheam">
						<i class="fa fa-folder colorFont"></i>
						<span>留学管理系统</span>
						<i class="fa fa-angle-right"></i>
					</a>
					<ul class="childMenu">
						<li>
							<a href="<%=cfx%>/view/lx/LxCustomerList.jsp" target="myIframe">
								<i class="fa fa-file-text-o colorFont"></i>
								<span>客户管理</span>
							</a>
						</li>
						<li>
								<a href="<%=cfx%>/view/lx/ContractList.jsp" target="myIframe">
								<i class="fa fa-file-text-o colorFont"></i>
								<span>合同管理</span>
							</a>
						</li>
					</ul>
				</li>
				<li>
				
					
					<a href="javascript:void();"  class="liTheam">
						<i class="fa fa-folder colorFont"></i>
						<span>培训管理系统</span>
						<i class="fa fa-angle-right"></i>
					</a>
					
						<ul class="childMenu">
						<li>
							 	<i class="fa fa-file-text-o colorFont"></i>
								<span>客户管理</span>
							 
						</li>
						<li>
						 <i class="fa fa-file-text-o colorFont"></i>
								<span>合同管理</span>
							 
						</li>
					</ul>
					
					
				</li>
				<li>
				<a href="javascript:void();"  class="liTheam">
					 	<i class="fa fa-folder colorFont"></i>
						<span>夏令营</span>
						<i class="fa fa-angle-right"></i>
				 
					</a>
						<ul class="childMenu">
						<li>
						 
								<i class="fa fa-file-text-o colorFont"></i>
								<span>客户管理</span>
							 
						</li>
						<li>
					 
								<i class="fa fa-file-text-o colorFont"></i>
								<span>合同管理</span>
							 
						</li>
					</ul>
					
				</li>
				<li>
					<a href="javascript:void();"  class="liTheam">
						<i class="fa fa-folder colorFont"></i>
						<span>移民管理系统</span>
						<i class="fa fa-angle-right"></i>
					</a>
					
						<ul class="childMenu">
						<li>
						 
								<i class="fa fa-file-text-o colorFont"></i>
								<span>客户管理</span>
							 
						</li>
						<li>
						 
								<i class="fa fa-file-text-o colorFont"></i>
								<span>合同管理</span>
						 
						</li>
					</ul>
					
				</li>
			 
				<li></li><li></li>
				<li>
					<a href="javascript:void();"  class="liTheam">
						<i class="fa fa-folder colorFont"></i>
						<span>审批管理系统</span>
						<i class="fa fa-angle-right"></i>
					</a>
					<ul class="childMenu">
						<li>
							<a href="<%=cfx%>finance/bx/toList.do" target="myIframe">
								<i class="fa fa-file-text-o colorFont"></i>
								<span>报销申请</span>
							</a>
						</li>
						<li>
							<a href="<%=cfx%>/view/finance/JkList.jsp" target="myIframe">
								<i class="fa fa-file-text-o colorFont"></i>
								<span>借款申请</span>
							</a>
						</li>
					</ul>
				</li>
				<li></li><li></li>
				<li>
					<a href="javascript:void();"  class="liTheam">
						<i class="fa fa-folder colorFont"></i>
						<span>报表汇总管理</span>
						<i class="fa fa-angle-right"></i>
					</a>
					<ul class="childMenu">
						<li>
							<a href="<%=cfx%>/view/report/LxSignReport.jsp" target="myIframe">
							
								<i class="fa fa-file-text-o colorFont"></i>
								<span>留学签约转化率</span>
							</a>
						</li>
						<li>
								<a href="<%=cfx%>/view/report/PxSignReport.jsp" target="myIframe">
							
								<i class="fa fa-file-text-o colorFont"></i>
								<span>培训签约转化率</span>
							</a>
						</li>
					</ul>
				</li>
				  
			</ul>
		</div>
	 
		<iframe src="<%=cfx%>/view/base/MyselfList.jsp" name="myIframe" class="mainIframe"></iframe>
	</div>
 
	<script type="text/javascript">
		$('.liTheam').click(function(){
			var obj = $(this).children('i');
			if ($(obj).hasClass('fa-folder-open')){
				$(obj).removeClass('fa-folder-open').addClass('fa-folder');
				$(this).next('ul.childMenu').slideUp(100);
			}
			else{
				$(obj).removeClass('fa-folder').addClass('fa-folder-open');
				$(this).next('ul.childMenu').slideDown(100);
			}
		})
	</script>
</body>
</html>