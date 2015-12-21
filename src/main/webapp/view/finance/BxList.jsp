<!DOCTYPE html>
<%@ include file="/common/common.jsp"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
  <head>
    <title>index</title>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     



 

<script >
//业务请求的URL
Url = {
 
	add: '<%=cfx%>finance/bx/add.do'
		
};
function query() {
	var newUrl = $("#mytable").attr("data-url");
	newUrl += "&stuName="+$("#stuName").val();
	newUrl += "&companyCodes="+$("#companySelect").val();
	$("#mytable").bootstrapTable("refresh", { url:newUrl});
}
function save(frm)
{
 
}
function addNew(frm)
{
	frm.target="_blank";
	frm.action=Url.add;
	frm.submit();
 
}
$(document).ready(function(){
	
	 
	
});
</script>

  </head>
  <body>
  <div class="panel panel-default" style="width:1100px;margin:auto;">
 
  <form action=" /saveInfo/saveFormalInfo.do" method="post"  >
		<table class="table table-bordered table-condensed ">
			<tbody>
				<tr >
				   <td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  			<span class="needClass">*</span>申请人
			  		</td>
			  		<td width="14%" style=" vertical-align:middle;">
				 
				  	  <input type="text" class="form-control input-sm"  name="applyUserId" id="applyUserId">
					</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 		<span class="needClass">*</span>业务板块</td>
			  		<td width="16%">
			  		  <select class="form-control input-sm"  name="bizType" id="bizType"  style="width:120px;float:left;">
				    		<option value="">请选择</option>
				    		<option value="lx">留学</option>
				    		<option value="px">培训</option>
				    		<option value="ym">移民</option>
				    		<option value="xly">夏令营</option>
				    		<option value="zh">综合</option>
				    		<option value="qt">其他</option>
				    	</select>
			  		</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>报销类型</td>
			  		<td width="14%">
			  			 <select class="form-control input-sm"  name="bxType" id="bxType"  style="width:100px;float:left;">
				    		<option value="">请选择</option>
				    		<option value="common">业务费用</option>
				    		<option value="cl">差旅费</option>
				    		<option value="cl">餐费</option>
				    		<option value="cl">其他</option>
				    	</select>
			  		</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">审批状态</td>
			  		<td width="14%">
				  		<select class="form-control input-sm"  name="status" id="status" style="width:120px;float:left;">
				    		
				    		<option value="">请选择</option>
				    		<option value="1">草稿</option>
				    		<option value="2">审批中</option>
				    		<option value="3">撤回</option>
				    		<option value="6">驳回</option>
				    		<option value="4">审批通过</option>
				    	
				    		<option value="6">已支付</option>
				    	</select>
			    	</td>
			  		
			  	</tr>
			   
			   
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>申请部门</td>
			  		<td  >
						 <input  class="form-control input-sm" id="applyUnitId" name="applyUnitId"/>
					</td>
					<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>报销金额</td>
			  		<td  >
						<select   name="bxFw" id="bxFw" style="width:70px;height:27px;float:left;">
				    	 
				    		<option value="1"><%=">"%></option>
				    		<option value="1"><%="<"%></option>
				    		<option value="1"><%="="%></option>
				    	</select>
						 &nbsp;
						 <input  style="width:80px;"  id="bxMoney" name="bxMoney"/>
					</td>	
						 
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 			 <span class="needClass">*</span>申请日期</td>
			  			<td colspan="3">
			  			<input style="width:120px;"      name="applyDate1" id="applyDate1" >
			  			到
			  			<input style="width:120px;"       name="applyDate2" id="applyDate2">
			  		</td>
			  		
			  	</tr>
			  	
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>报销内容</td>
			  		<td colspan="3">
						 <input  class="form-control input-sm" id="applyUnitId" name="applyUnitId"/>
					</td>
						
						 
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 			 <span class="needClass">*</span>支付日期</td>
			  			<td colspan="3">
			  			<input style="width:120px;"   name="payDate1" id="payDate1">
			  			到
			  			<input style="width:120px;"     name="payDate2" id="payDate2">
			  		</td>
			  		
			  	</tr>
			  	<tr >
			  	 <td colspan="8" align='center'>
					<button type="button" onclick="query(this.form)" class="btn btn-danger" data-toggle="tooltip" data-placement="top">查询</button>
			  		<button type="button" onclick="addNew(this.form)"  class="btn btn-danger" data-toggle="tooltip" data-placement="top">新增</button>
			  	</td>
			  		
			  	</tr>
		  	</tbody>
		</table>
	 
 	  </form>
	</div>

 
	</body>
</html>
