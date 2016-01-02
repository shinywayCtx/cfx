<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<%@ include file="/common/common.jsp"%> 
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title> </title>
	
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
 
</head>

<script type="text/javascript">
	function  add()
	{
		
		
		
	}
	</script>
<body>
<style type="text/css">
 
table.zyhovertable {
    font-family: 
    verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #999999;
    border-collapse: collapse;
    width:1100px
}

table.zyhovertable th {
    background-color:#C3DDE0;
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}

table.zyhovertable tr {
    background-color:#DCDCDC;
}

table.zyhovertable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
</style>
<form action="">
<table class="zyhovertable">
 

<tr>
<td>意向国家<input name='cust_name'/></td>
<td>意向学历<input name='cust_phone'/></td>
<td>意向专业<input name='cust_zxgw'/></td>
<td>计划成行时间<input name='cust_zxgw'/></td>
</tr>
<tr>
<td>客户姓名<input name='cust_name'/></td>
<td>性别<input name='cust_phone'/></td>
<td>年龄<input name='cust_zxgw'/></td>
<td>毕业时间<input name='cust_zxgw'/></td>
</tr>


<tr>
<td>当前学历<input name='cust_phone'/></td>
<td>当前专业<input name='cust_zxgw'/></td>
<td>外语程度<input name='cust_zxgw'/></td>
<td>国内毕业院校<input name='cust_zxgw'/></td>
</tr>
 
 
<tr>

<td colspan="4">所在城市<input name='cust_phone'/></td>
 
</tr>


<tr>
<td>联系方式<input name='cust_phone'/></td>
<td>当前专业<input name='cust_zxgw'/></td>
<td>外语程度<input name='cust_zxgw'/></td>
<td>国内毕业院校<input name='cust_zxgw'/></td>
</tr>

<tr>
<td><input type='button'  value='查询'/></td>
<td>
<a href="<%=cfx%>lx/custAdd.do" target="_blank"> 新增</a>
 
</td>
<td> </td>

</tr>
 
</table>
</form>

</body>
</html>