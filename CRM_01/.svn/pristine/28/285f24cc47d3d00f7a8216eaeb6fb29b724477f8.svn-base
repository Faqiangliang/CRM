<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>编辑客户</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<script>
				var url="${pageContext.request.contextPath}/baseDict_findByCode";
				function loadDict(dict_type_code,targe,optionVal){
					$.post(url,{dict_type_code:dict_type_code},function(result){
						//alert(result);
						$(result).each(function(i,obj){
							$(targe).append("<option  value='"+obj.dict_id+"'>"+obj.dict_item_name+"</option>");
						});
						$(targe).find("option[value='"+oldVal+"']").attr("selected","selected"); 
					},"json");
					//alert(optionVal);
					//$(targe).find("option[value='"+optionVal+"']").attr("selected","selected");
				
				}
				
				$(function(){
					//alert("555");
					loadDict("001","#cust_industry","${edit.cust_industry.dict_id}");
					loadDict("009","#cust_source","${edit.cust_source.dict_id}");
					loadDict("006","#cust_level","${edit.cust_level.dict_id}");
				});
	</script>

	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/customer_editSave" method=post>
		<input type="hidden" name="cust_id" value="${edit.cust_id}">
		<input type="hidden" name="cust_image" value="${edit.cust_image}">
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg" border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg" height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_022.jpg">
						<IMG src="${pageContext.request.contextPath }/images/new_022.jpg" border=0>
					</TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：客户管理 &gt; 编辑客户</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>						
						<TABLE cellSpacing=0 cellPadding=5  border=0>
							<TR>
								<td>客户名称：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name" value="${edit.cust_name}">
								</td>
								<td>所属行业 ：</td>
								<td>
									<select name="cust_industry.dict_id" id="cust_industry" class=textbox id=sChannel2 style="WIDTH: 180px">
										<!-- <option value="non">---请选择---</option> -->
									</select>
								</td>
							</TR>							
							<TR>	
								<td>信息来源 ：</td>
								<td>
									<select name="cust_source.dict_id" id="cust_source" class=textbox id=sChannel2 style="WIDTH: 180px">
										
									</select>
								</td>
								<td>客户级别：</td>
								<td>
									<select name="cust_level.dict_id" id="cust_level" class=textbox id=sChannel2 style="WIDTH: 180px" id="cust_level" onchange="update()">
										
										
									</select>								
								</td>
							</TR>
							<TR>
								<td>联系地址 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_address" value="${edit.cust_address}">
								</td>
								<td>联系电话 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile" value="${edit.cust_mobile}">
								</td>
							</TR>
							<tr>
								<td rowspan=2>
									<INPUT class=button id=sButton2 type=submit value=" 保存 " name=sButton2>
								</td>
							</tr>
							<img alt="客户资质" src="${pageContext.request.contextPath}/${edit.cust_image}">
						</TABLE>
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
						<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0></TD>
					<TD align="center" width="100%" background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"	border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
