<!DOCTYPE html>
<%@ include file="/common/common.jsp"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
  <head>
    <title>index</title>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     



 

<script >
function query() {
	var newUrl = $("#mytable").attr("data-url");
	newUrl += "&stuName="+$("#stuName").val();
	newUrl += "&companyCodes="+$("#companySelect").val();
	$("#mytable").bootstrapTable("refresh", { url:newUrl});
}
function save(frm)
{
	frm.action=" /saveInfo/saveFormalInfo.do";
}
function add(frm)
{
	frm.action="<%=cfx%>/view/lx/CustAdd.jsp";
	frm.target = "_blank";
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
			 				<span class="needClass">*</span>咨询日期</td>
			  		<td width="16%">
			  			<input type="text" class="form-control input-sm"  name="inquireDate" id="inquireDate">
			  			<input type="hidden" class="form-control input-sm" id="cstmId" name="cstmId"/>
			  		</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>客户姓名</td>
			  		<td width="14%">
			  			<input type="text" name="cstmName" class="form-control input-sm" id="name" placeholder="">
			  		</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">性别</td>
			  		<td width="14%">
				  		<select class="form-control input-sm"  name="cstmSex" id="starMonthSelect" style="width:70px;float:left;">
				    		
				    		<option value="">请选择</option>
				    		<option value="">男</option>
				    		<option value="">女</option>
				    	</select>
			    	</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			  			<span class="needClass">*</span>意向国家
			  		</td>
			  		<td width="14%" style=" vertical-align:middle;">
				  		<button type="button" id="scBut" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#countryModal">
							   选择
							</button>
							<input type="hidden" id="country"  name="hopeCountries" />
					</td>
			  	</tr>
			   
			   
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>客户学历</td>
			  		<td>
						<select name="xlId" class="form-control input-sm" id="starMonthSelect" style="width:100%;float:left;">
				    		<option >请选择</option>
				    		
				    	</select>
						</td>
						
						<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>意向学历</td>
			  		<td>
						<select name="xlId" class="form-control input-sm" id="starMonthSelect" style="width:100%;float:left;">
				    		<option >请选择</option>
				    		
				    	</select>
						</td>
						<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 				<span class="needClass">*</span>国内专业</td>
			  		<td width="16%">
			  			<input type="text" class="form-control input-sm"  name="inquireDate" id="askDate">
			  			<input type="hidden" class="form-control input-sm" id="cstmId" name="cstmId"/>
			  		</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 				<span class="needClass">*</span>意向专业</td>
			  		<td width="16%">
			  			<input type="text" class="form-control input-sm"  name="inquireDate" id="askDate">
			  			<input type="hidden" class="form-control input-sm" id="cstmId" name="cstmId"/>
			  		</td>
			  		
			  	</tr>
			  	<tr >
			  		<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>出生年月</td>
			  		<td>
						<select name="xlId" class="form-control input-sm" id="starMonthSelect" style="width:100%;float:left;">
				    		<option >请选择</option>
				    		
				    	</select>
						</td>
						
						<td class="text-right" style="vertical-align: middle;font-weight:bold;"><span class="needClass">*</span>毕业院校</td>
			  		<td>
						<select name="xlId" class="form-control input-sm" id="starMonthSelect" style="width:100%;float:left;">
				    		<option >请选择</option>
				    		
				    	</select>
						</td>
						<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 				<span class="needClass">*</span>毕业时间</td>
			  		<td width="16%">
			  			<input type="text" class="form-control input-sm"  name="inquireDate" id="askDate">
			  			<input type="hidden" class="form-control input-sm" id="cstmId" name="cstmId"/>
			  		</td>
			  		<td width="10%" class="text-right" style="vertical-align: middle;font-weight:bold;">
			 				<span class="needClass">*</span>语言能力</td>
			  		<td width="16%">
			  			<input type="text" class="form-control input-sm"  name="inquireDate" id="askDate">
			  			<input type="hidden" class="form-control input-sm" id="cstmId" name="cstmId"/>
			  		</td>
			  		
			  	</tr> 
		  	</tbody>
		</table>
			<div style="width:288px;margin:auto;">
	 
		<button type="button" onclick="save(this.form)" class="btn btn-danger" style="margin-left:3px;" data-toggle="tooltip" data-placement="top" title="query">查询</button>
 		<button type="button" onclick="add(this.form)" class="btn btn-danger" style="margin-left:3px;" data-toggle="tooltip" data-placement="top" title="Add">新增</button>
 
 </div>
 	  </form>
	</div>

 
	</body>
</html>
