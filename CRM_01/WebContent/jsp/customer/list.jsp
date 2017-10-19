﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>客户列表</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<SCRIPT language=javascript>
	
      function delCustomer(id){
    	     
			  var flag=confirm("您确定要删除吗？");
			 if(flag){
				 location.href="${pageContext.request.contextPath }/customer_remove.action?cust_id="+id;
			 }  
	}

	function to_page(page){
		if(page){ 
			//前一页、 后一页 
			$("#page").val(page);
		}else{
			
		
			//没带参数 ， 跳转到具体页面
			/* var requestPage = $("#page").val(); 
			var totalPage = "${totalPage}";
			if(Number(requestPage) > Number(totalPage)){
				return ;
			}  */
			
		}
		document.customerForm.submit();	
	}
	function changePageSize(){
		
		document.customerForm.submit();	
	}
	
	
	var url="${pageContext.request.contextPath}/baseDict_findByCode";
	function loadDict(dict_type_code,targe,oldVal){
		$.post(url,{dict_type_code:dict_type_code},function(result){
			//alert(result);
			$(result).each(function(i,obj){
				$(targe).append("<option  value='"+obj.dict_id+"'>"+obj.dict_item_name+"</option>");
			});
			$(targe).find("option[value='"+oldVal+"']").attr("selected","selected"); 
		},"json");
		
	}
	
	$(function(){
		//alert("555");
		loadDict("001","#cust_industry","${cust_industry.dict_id}");
		loadDict("009","#cust_source","${cust_source.dict_id}");
		loadDict("006","#cust_level","${cust_level.dict_id}");
	});
	
	
</SCRIPT>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id="customerForm" name="customerForm" action="${pageContext.request.contextPath }/customer_findAll.action" method=post>	
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
								<TD class=manageHead>当前位置：客户管理 &gt; 客户列表</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
							<TBODY>
								<TR>
									<TD height=25>
										<TABLE cellSpacing=0 cellPadding=2 border=0>
											<TBODY>
							  <TR>
													<TD>客户名称：</TD>
													<TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="cust_name"></TD>
													
													<td>客户行业 ：</td>
													<td>
														
														<select name="cust_industry.dict_id"  class=textbox id="cust_industry" style="WIDTH: 100px;height: 21px">
															<option value="">---请选择---</option>
														</select>
													</td>
													
													<td>客户级别 ：</td>
													<td>
														
														<select name="cust_level.dict_id"  class=textbox id="cust_level" style="WIDTH: 100px;height: 21px">
															<option value="">---请选择---</option>
														</select>
													</td>
													
													<td>客户来源 ：</td>
													<td>
														
														<select name="cust_source.dict_id"  class=textbox id="cust_source" style="WIDTH: 100px;height: 21px">
															<option value="">---请选择---</option>
														</select>
													</td>
													
													
													<TD>客户地址：</TD>
													<TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="cust_address"></TD>
													
													<TD>客户电话：</TD>
													<TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="cust_mobile"></TD>
													
													
													<TD><INPUT class=button id=sButton2 type=submit value=" 筛选 " name=sButton2></TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<TABLE id=grid style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc" cellSpacing=1 cellPadding=2 rules=all border=0>
											<TBODY>
												<TR style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
													<TD>客户名称</TD>
													<TD>客户级别</TD>
													<TD>客户来源</TD>
													<TD>所属行业</TD>
													<TD>联系地址</TD>
													<TD>联系电话</TD>
													<TD>操作</TD>
												</TR>
											    <c:forEach items="${pageBean.list}" var="customer">
												<TR style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
													<TD>${customer.cust_name }</TD>
													<TD>${customer.cust_level.dict_item_name }</TD>
													<TD>${customer.cust_source.dict_item_name }</TD>
													<TD>${customer.cust_industry.dict_item_name }</TD>
													<TD>${customer.cust_address }</TD>
													<TD>${customer.cust_mobile }</TD>
													<TD>
													<a href="${pageContext.request.contextPath }/customer_editUI.action?cust_id=${customer.cust_id}">修改</a>
													&nbsp;&nbsp;
													<%-- <a href="${pageContext.request.contextPath }/customer_remove.action?cust_id=${customer.cust_id}">删除</a> --%>
													<a href="javascript:delCustomer(${customer.cust_id})">删除</a>
												    <!-- <a href="javascript:changePageSize()">删除</a> -->
													</TD>
												</TR>	
												</c:forEach> 
												<%-- <s:iterator value="list">
														<TR style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
													<TD><s:property value="custName"/></TD>
													<TD><s:property value="baseDictLevel.dict_item_name"/></TD>
													<TD><s:property value="baseDictSource.dict_item_name"/></TD>
													<TD><s:property value="baseDictIndustry.dict_item_name"/></TD>
													<TD><s:property value="cust_phone"/></TD>
													<TD><s:property value="cust_mobile"/></TD>
													
													<a href="${pageContext.request.contextPath }/customer/CustomerServlet?method=editCustomerUI&custId=${customer.custId}">修改</a>
													&nbsp;&nbsp;
													<a href="${pageContext.request.contextPath }/customer/CustomerServlet?method=removeCustomer&custId=${customer.custId}">删除</a>
													</TD>
												</TR>	
												</s:iterator> --%>
												
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<SPAN id=pagelink>
											<DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
												共[<B>${pageBean.totalCount}</B>]条记录,[<B>${pageBean.totalPage}</B>]页
												,每页显示
												<select name="pageSize" onchange="changePageSize()">
												
												<option value="5" <c:if test="${pageBean.pageSize==5 }">selected</c:if>>5</option>
												<option value="10" <c:if test="${pageBean.pageSize==10 }">selected</c:if>>10</option>
												</select>
												条
												[
													<s:if test="pageBean.currPage==1">
													前一页
													</s:if>
													<s:else>
													<A href="javascript:to_page(${pageBean.currPage-1})">前一页</A>
													</s:else>
												]
												<B>${pageBean.currPage}</B>
												[
													<s:if test="pageBean.currPage==pageBean.totalPage">
													后一页
													</s:if>
													<s:else>
													<A href="javascript:to_page(${pageBean.currPage+1})">后一页</A>
													</s:else>
													] 
												到
												<input type="text" size="3" id="page" name="currPage" />
												页
												
												<input type="button" value="Go" onclick="to_page()"/>
											</DIV>
										</SPAN>
									</TD>
								</TR>
							</TBODY>
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
					<TD align=middle width="100%" background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
