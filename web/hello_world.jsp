<!DOCTYPE html>
<%@ page trimDirectiveWhitespaces="true"%> <!-- jsp标签，用来清除多余的空格 -->
<%@ page contentType="text/html; charset=UTF-8" %> <!-- jsp标签，用来设置编码和内容格式 -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

	<head>
	<meta name="referrer" content="always" />
	<meta charset='utf-8' />
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-control" content="no-cache">
	<meta http-equiv="Cache" content="no-cache">
	<title>Hello World</title>
	</head>

	<body>
	<center>
  	  	
	  	<div style="padding:20px">==== these tables are in database ====</div>
	  	
	  	<table border="1">
	  		<tr>
	  			<td align="center" style="padding:5px 10px">id</td>
	  			<td align="center" style="padding:5px 10px">name</td>
	  		</tr>
	  		
	  		<s:iterator value="tables" id="id" status="st">
	  		<tr>
	  			<td align="center" style="padding:5px 10px"><s:property value="#st.index + 1"/></td>
	  			<td align="center" style="padding:5px 10px"><div style="padding:5px 0px"><s:property value="#id"/></div></td>
	  		</tr>
	  		</s:iterator>
	  	
	  	</table> 
	  	
    </center>
  </body>
</html>
