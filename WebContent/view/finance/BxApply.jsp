<!DOCTYPE html>
<%@ include file="/common/common.jsp"  %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>index</title>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
   
   
 <style>
 
 </style>
<script >
//业务请求的URL
Url = {
 
	save: '<%=cfx%>finance/bx/save.do'
};
 
function save(frm)
{
 	frm.action=Url.save;
 
	$(frm).ajaxSubmit({ 
	   	type: "post", 
     	dataType: "json",
	   	contentType: "application/x-www-form-urlencoded;charset=utf-8",  
	   	success: function(jsonData, statusText)
	   	{
	   		if(jsonData.rc == '9'){alert(jsonData.msg);return;}
		   	alert(jsonData.msg); 
		   	frm.applyId.value=jsonData.obj.applyId;
		 
	   	}
	});
  }
 
function selectUser()
{
	 
 
}
$(document).ready(function(){
	
	 var msg="${msg}";
	 if(msg)alert(msg);
	
});
</script>

  </head>
  <body>
 
  <div class="panel panel-default" style="width:935px;margin:auto;">
 
  <form   method="post"  >
  
  <input name='applyId' value="${bx.applyId}"  type='hidden'>
  <fieldset>
	 
	 
		<table class="table table-bordered table-condensed ">
			<tbody>
				<tr >
				   <td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  		 申请人
			  		</td>
			  		<td width="14%" style=" vertical-align:middle;">
				 
				   
				  	 <input  readonly style="width:70px;" value='${user.userName}'/>
				  	 <input type="hidden" name="applyUserId" id="applyUserId" value="${user.userId}">
				  	 <a href="javascript:void()" onclick="selectUser()" >选择</a> 
				
					</td>
			  		<td width="9%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 		 申请部门</td>
			  		<td width="21%" style="vertical-align: middle; ">
			  		   ${unitName}
			  		</td>
			  		<td width="7%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  	 
			  		费用板块</td>
			  		<td width="14%">
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
			  		<td width="8%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  		 费用类型</td>
			  		<td width="14%">
			  			 <select class="form-control input-sm"  name="bxType" id="bxType"  style="width:100px;float:left;">
				    		<option value="">请选择</option>
				    		<option value="biz">业务费用</option>
				    		<option value="clf">差旅费</option>
				    		<option value="cf">餐费</option>
				    		<option value="qt">其他</option>
				    	</select>
			  		</td>
 
			  	</tr>
 
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;">
			  		 报销金额</td>
			  		<td  >
						 <input  class="form-control input-sm" id="applyMoney" name="applyMoney"/>
					</td>
					<td class="text-right" style="vertical-align: middle;font-weight:bold;">
				 	发票张数</td>
			  		<td  >
						 <input  class="form-control input-sm" id="receiptCount" name="receiptCount" style='width:55px'/>
					</td>	
						 
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 		</td><td colspan="3"> </td>
			  		
			  	</tr>
			  	
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;">
			  		 申请内容</td>
			  		<td colspan="7">
						 <input  class="form-control input-sm"  name="bxContent" style='width:95%'  />
					</td>
 	
			  	</tr>
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>附件</td>
			  		<td colspan="7">
						 <input  class="form-control input-sm" type='file' style='width:95%'  />
					</td>
 	
			  	</tr>
			  	 	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;"> 备注</td>
			  		<td colspan="7">
							<textarea name="memo" rows="4" style='width:95%'   class="form-control input-sm" > </textarea>
		
					</td>
			  	</tr>
			 
		  	</tbody>
		</table>
		</fieldset>	
			<fieldset>
		 
		  	<table class="table table-bordered table-condensed ">
			<tbody>
				<tr >
				    <td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  			 开户银行
			  		</td>
			  		<td width="25%" style=" vertical-align:middle;">
				 
				  	  <input type="text" class="form-control input-sm"  name="bankName" id="bankName">
					</td>
			  		<td width="6%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 		 姓名</td>
			  		<td width="12%">  <input type="text" class="form-control input-sm"  name="skrPersion" id="skrPersion"></td>
			  		<td width="6%" class="text-right" style="vertical-align: middle;font-weight:bold;">手机号码</td>
			   	  		<td width="13%" class="text-right" >
			   	  		  <input type="text" class="form-control input-sm" style="width:190px;" name="skrPhone" id="skrPhone">
			   	  		</td>
			  	</tr>
			  
			  	 	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;">银行卡号</td>
			  		<td colspan="7">
					  <input type="text" class="form-control input-sm"
					   name="bankCard" id="bankCard"	style="width:500px;">
					</td>
 	
			  	</tr>
			   
		  	</tbody>
		</table>
			</fieldset>
			<fieldset>
		   
		  	<table class="table table-bordered table-condensed ">
			<tbody>
				<tr >
				    <td width="7%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  		 前置审批人
			  		</td>
			  		<td width="20%" style=" vertical-align:middle;">
				  	  <input  name="applyUserId" id="applyUserId" readonly />
				  	 <a href="javascript:void()" onclick="selectUser()" >选择</a> <a href="javascript:void()" onclick="clearUser()"  >清空</a>
					</td>
			  		<td width="7%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  		 固定审批人
			  		</td>
			  		<td width="12%" style=" vertical-align:middle;">
				  	  <input  name="applyUserId" id="applyUserId" readonly class="form-control input-sm" />
					</td>
					<td width="7%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  			后置审批人
			  		</td>
			  		<td width="14%" style=" vertical-align:middle;">
				  	  <input  name="applyUserId" id="applyUserId" readonly style='width:110px'  />
				  	  	 <a href="javascript:void()" onclick="selectUser()" >选择</a> <a href="javascript:void()" onclick="clearUser()"  >清空</a>
					</td>
			  	</tr>
			  
		  	</tbody>
		</table>
			</fieldset>
	 	 <fieldset>
		  	<legend style="font-weight:bold;font-size:20px;text-align:center">
		  			<button type="button" onclick="save(this.form)" class="btn btn-danger" data-toggle="tooltip" data-placement="top">保存</button> &nbsp;&nbsp;
					
			  		<button type="button" onclick="submit(this.form)" class="btn btn-danger" data-toggle="tooltip" data-placement="top">提交审批</button>
			  
		  	</legend>
		  </fieldset>
 	  </form>
	</div>

 
	</body>
</html>
