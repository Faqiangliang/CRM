<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>联系人列表</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<SCRIPT language=javascript>

	 
	$(function(){
		
		var url="${pageContext.request.contextPath}/customer_findAllCustomer.action";
		$.post(url,function(result){
	
		$(result).each(function(i,o){
			$("#customer").append("<option value='"+o.cust_id+"'>"+o.cust_name+"</option>");
		}); 
			
		},"json");
	});

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
	function delLinkMan(id){
		var flag=confirm("您确定要删除吗？")
		if(flag){
			location.href="${pageContext.request.contextPath }/linkMan_removeLinkMan?lkm_id="+id;
		}
	}
</SCRIPT>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id="customerForm" name="customerForm" action="${pageContext.request.contextPath }/linkMan_findByPage.action" method=post>		
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
								<TD class=manageHead>当前位置：联系人管理 &gt; 联系人列表</TD>
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
													<TD>联系人名称：</TD>
													<TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="lkm_name"></TD>
													<TD>性别</TD>
													<TD>
														<select name="lkm_gender" id="lkm_gender" class=textbox id=sChannel2 style="WIDTH: 180px">
															<option value="男" >男</option>
															<option value="女" >女</option>
														
														</select>
													</TD>
													 
													<TD>所属公司：</TD>
													<TD>
														<select name="customer.cust_id" id="customer" class=textbox id=sChannel2 style="WIDTH: 180px">
														<option value="none">--请选择--</option>
														</select>
													</TD>
													<TD>职位</TD>
													<TD><INPUT class=textbox id=sChannel2 style="WIDTH: 80px" maxLength=50 name="lkm_position"></TD> 
													
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
													<TD>联系人名称</TD>
													<TD>性别</TD>
													<TD>办公电话</TD>
													<TD>手机</TD>
													<TD>邮箱</TD>
													<TD>职位</TD>
													<TD>备注</TD>
													<TD>所属客户</TD>
													<TD>操作</TD>
												</TR>
												<c:forEach items="${linkMans.list}" var="linkman">
												<TR
													style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
													<TD>${linkman.lkm_name }</TD>
													<TD>${linkman.lkm_gender }</TD>
													<TD>${linkman.lkm_phone }</TD>
													<TD>${linkman.lkm_mobile }</TD>
													<TD>${linkman.lkm_email }</TD>
													<TD>${linkman.lkm_position }</TD>
													<TD>${linkman.lkm_memo }</TD>
													<TD>${linkman.customer.cust_name}</TD> 
													<TD>
													<a href="${pageContext.request.contextPath }/linkMan_editUI?lkm_id=${linkman.lkm_id}">修改</a>
													&nbsp;&nbsp;
													<%-- <a href="${pageContext.request.contextPath }/linkMan_removeLinkMan?lkm_id=${linkman.lkm_id}">删除</a> --%>
												    <a href="javascript:delLinkMan(${linkman.lkm_id})">删除</a> 
													</TD>
												</TR>
												</c:forEach>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<SPAN id=pagelink>
											<DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
												共[<B>${linkMans.totalCount}</B>]条记录,[<B>${linkMans.totalPage}</B>]页
												,每页显示
												<select name="pageSize">
												<option value="5" <c:if test="${pageSize==5 }">selected</c:if>>5</option>
												<option value="10" <c:if test="${pageSize==10 }">selected</c:if>>10</option>
												</select>
												条
												[
													<s:if test="linkMans.currPage==1">
													前一页
													</s:if>
													<s:else>
													<A href="javascript:to_page(${linkMans.currPage-1})">前一页</A>
													</s:else>
												]
												<B>${linkMans.currPage}</B>
												[
													<s:if test="linkMans.currPage==linkMans.totalPage">
													后一页
													</s:if>
													<s:else>
													<A href="javascript:to_page(${linkMans.currPage+1})">后一页</A>
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
					<TD align="center" width="100%" background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
	<s:debug></s:debug>
</BODY>
</HTML>
