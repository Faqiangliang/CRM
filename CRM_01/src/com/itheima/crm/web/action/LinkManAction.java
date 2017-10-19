package com.itheima.crm.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.LinkMan;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.service.CustomerService;
import com.itheima.crm.service.LinkManService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author Strive
 *
 */
public class LinkManAction extends ActionSupport implements ModelDriven<LinkMan>{
	
	private LinkMan linkMan;
	private Customer customer;
	private LinkManService linkManService;
	private CustomerService customerService;
	private List<LinkMan> linkMans;
	
	public List<LinkMan> getLinkMans() {
		return linkMans;
	}

	public void setLinkMans(List<LinkMan> linkMans) {
		this.linkMans = linkMans;
	}
	private int currPage=1;
	private int pageSize=5;
	
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	public void setLinkManService(LinkManService linkManService) {
		this.linkManService = linkManService;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public LinkMan getModel() {
		// TODO Auto-generated method stub
		if(linkMan==null){
			linkMan=new LinkMan();
		}
		return linkMan;
	}
	public String saveUI(){
	    List<Customer> find4LinkMan=customerService.findAll();
	    System.out.println("客户数量："+find4LinkMan.size());
		ServletActionContext.getContext().getValueStack().set("find4LinkMan", find4LinkMan);
		return "find_suc";
		
	}
	
	public String saveLinkMan(){
		linkManService.saveLinkMan(linkMan);
		return "save_suc";
	}
	public String findByPage(){
		
		DetachedCriteria detachedCriteria= DetachedCriteria.forClass(LinkMan.class);
		
		if(!StringUtils.isEmpty(linkMan.getLkm_name())){
			
			detachedCriteria.add(Restrictions.like("lkm_name", "%"+linkMan.getLkm_name()+"%"));
		}
		if(!StringUtils.isEmpty(linkMan.getLkm_gender())){
			
			detachedCriteria.add(Restrictions.like("lkm_gender", "%"+linkMan.getLkm_gender()+"%"));
		}
		if(!StringUtils.isEmpty(linkMan.getLkm_position())){
			
			detachedCriteria.add(Restrictions.like("lkm_position", "%"+linkMan.getLkm_position()+"%"));
		}
		
		if(linkMan.getCustomer()!=null&&linkMan.getCustomer().getCust_id()!=0){
			
			
			detachedCriteria.add(Restrictions.like("customer.cust_id", linkMan.getCustomer().getCust_id()));
		}
	
		PageBean<LinkMan> linkMans=linkManService.findByPage(detachedCriteria,currPage,pageSize);
		
		ServletActionContext.getContext().getValueStack().set("linkMans", linkMans);
		return "linkMans";
	}
	public String removeLinkMan(){
		
		linkManService.removeLinkMan(linkMan.getLkm_id());
		return "remove_suc";
	}
	public String editUI(){
		 List<Customer> find4LinkMan=customerService.findAll();
		 System.out.println("客户数量："+find4LinkMan.size());
	     ServletActionContext.getContext().getValueStack().set("find4LinkMan", find4LinkMan);
		LinkMan linkman=linkManService.findByID(linkMan.getLkm_id());
		ServletActionContext.getContext().getValueStack().set("linkman", linkman);
		return "edit_UI";
	}
	public String editSave(){
	
		linkManService.editSave(linkMan);
	
		return "edit_save";
	}
	public String findByCustomerID(){
		
		
		 linkMans=linkManService.findByCustomerID(linkMan.getCustomer().getCust_id());
		 System.out.println("根据客户ID找到联系人"+linkMans.size());
		
		return "findByID_suc";
	}

}
