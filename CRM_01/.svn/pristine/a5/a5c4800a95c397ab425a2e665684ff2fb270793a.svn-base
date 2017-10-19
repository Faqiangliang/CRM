package com.itheima.crm.web.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.bean.SaleVisit;
import com.itheima.crm.bean.User;
import com.itheima.crm.service.SaleVisitService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SaleVisitAction extends ActionSupport implements ModelDriven<SaleVisit> {

	private SaleVisit saleVisit;
	private SaleVisitService saleVisitService;
	private int pageSize=5;
	private int currentPage=1;
	private Date start_visit_time; 
	public void setStart_visit_time(Date start_visit_time) {
		this.start_visit_time = start_visit_time;
	}
	public void setEnd_visit_time(Date end_visit_time) {
		this.end_visit_time = end_visit_time;
	}
	private Date end_visit_time; 
	
	public void setCurrentPage(int currentPag) {
		this.currentPage = currentPag;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setSaleVisitService(SaleVisitService saleVisitService) {
		this.saleVisitService = saleVisitService;
	}
	@Override
	public SaleVisit getModel() {
		// TODO Auto-generated method stub
		if(saleVisit==null)
		{
			saleVisit=new SaleVisit();
		}
		return saleVisit;
	}
	public String save(){
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		saleVisit.setUser(user);
		saleVisitService.save(saleVisit);
		return "saveVisitRecod_suc";
	}
	public String findByPage(){
		
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(SaleVisit.class);
		
		if(saleVisit.getCustomer()!=null&&saleVisit.getCustomer().getCust_id()!=0){
			
			detachedCriteria.add(Restrictions.like("customer.cust_id", saleVisit.getCustomer().getCust_id()));
		}
		System.out.println(start_visit_time+""+end_visit_time);
		if(start_visit_time!=null&&end_visit_time!=null){
			detachedCriteria.add(Restrictions.between("visit_time", start_visit_time, end_visit_time));
		}else if(start_visit_time!=null){
			detachedCriteria.add(Restrictions.ge("visit_time", start_visit_time));
		}else if(end_visit_time!=null){
			detachedCriteria.add(Restrictions.le("visit_time", end_visit_time));
		}
		
		
		PageBean<Customer> pageBean4Visit=saleVisitService.findByPage(detachedCriteria,currentPage,pageSize);
		ServletActionContext.getContext().getValueStack().push(pageBean4Visit);
		return "findVisitRecod_suc";
	}

}
