package com.itheima.crm.web.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.service.CustomerService;
import com.itheima.crm.utils.UploadUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import freemarker.template.utility.StringUtil;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer> {
	
	private int currPage=1;
	private int pageSize=5;
	private Customer customer;
	private String uploadFileName;
	private String uploadContentType;
	private File upload;
	
	private List<Customer> listCounstmer;
	public List<Customer> getListCounstmer() {
		return listCounstmer;
	}
	
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	private CustomerService customerService;
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	@Override
	public Customer getModel() {
		// TODO Auto-generated method stub
		if(customer==null){
			customer=new Customer();
		}
		return customer;
	}
	public String findAllCustomer(){
		listCounstmer = customerService.findAll();
		System.out.println("查到所属公司数量为："+listCounstmer.size());
		return "findAllCustomer";
	}
	
	public String findAll(){
		    //customerService.findAll()
			System.out.println(currPage+"到========");
			DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Customer.class);
			
			if(!StringUtils.isEmpty(customer.getCust_name())){
				detachedCriteria.add(Restrictions.like("cust_name", "%"+customer.getCust_name()+"%"));
			}
			//判定客户地址
			if(!StringUtils.isEmpty(customer.getCust_address())){
				detachedCriteria.add(Restrictions.like("cust_address", "%"+customer.getCust_address()+"%"));
			}
			//判定客户电话
			if(!StringUtils.isEmpty(customer.getCust_mobile())){
				detachedCriteria.add(Restrictions.like("cust_phone", "%"+customer.getCust_mobile()+"%"));
			}
			//判定客户行业
			
			if(customer.getCust_industry()!= null && !StringUtils.isEmpty(customer.getCust_industry().getDict_id())){
				detachedCriteria.add(Restrictions.eq("cust_industry.dict_id", customer.getCust_industry().getDict_id()));
			}
			//判定客户来源
			if(customer.getCust_source()!= null && !StringUtils.isEmpty(customer.getCust_source().getDict_id())){
				detachedCriteria.add(Restrictions.eq("cust_source.dict_id", customer.getCust_source().getDict_id()));
			}
			//判定客户级别
			if(customer.getCust_level()!= null && !StringUtils.isEmpty(customer.getCust_level().getDict_id())){
				detachedCriteria.add(Restrictions.eq("cust_level.dict_id", customer.getCust_level().getDict_id()));
			}
			PageBean<Customer> pageBean=customerService.findByPage(detachedCriteria,currPage,pageSize);
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("pageBean", pageBean);
			System.out.println(pageBean.getTotalPage());
			System.out.println("查找成功！！！");
			//ActionContext.getContext().getValueStack().push(pageBean);
		return "list";
	}
	public String saveUI(){
		
		System.out.println("进入save_ui");
		return "save_ui";
	}
	public String save() throws IOException{
		
		if(StringUtils.isEmpty(customer.getCust_name().trim())){
			addActionError("客户名称不能为空！");
			return "input_error";
		}
		if(StringUtils.isEmpty(customer.getCust_address().trim())){
			addActionError("客户地址不能为空！");
			return "input_error";
		}
		if(StringUtils.isEmpty(customer.getCust_mobile().trim())){
			addActionError("客户电话不能为空！");
			return "input_error";
		}
		if(StringUtils.isEmpty(customer.getCust_source().getDict_id())){
			addActionError("客户来源不能为空！");
			return "input_error";
		}
		if(StringUtils.isEmpty(customer.getCust_industry().getDict_id())){
			addActionError("客户行业不能为空！");
			return "input_error";
		}
		if(StringUtils.isEmpty(customer.getCust_level().getDict_id())){
			addActionError("客户登记不能为空！");
			return "input_error";
		}
		if(upload==null){
			addActionError("客户资质不能为空！");
			return "input_error";
		}
		if(upload!=null){
			String uuidName = UploadUtils.getUUIDName(uploadFileName);
			String path="D:\\upload\\img\\"+uuidName;
			File file = new File(path);
			FileUtil.copyFile(upload, file);
			customer.setCust_image("img/"+uuidName);
		}
		customerService.save(customer);
		return "save_suc";
	}
	public String editUI(){
		
		Customer customerBySearch=customerService.findByID(customer.getCust_id());
		ServletActionContext.getRequest().setAttribute("edit", customerBySearch);
		return "find_suc";
	}
	public String editSave(){
		System.out.println("携带ID为"+customer.toString());
		customerService.editSave(customer);
		
		
		return "edit_suc";
	}
	public String remove(){
		System.out.println("进入删除方法携带ID为"+customer.getCust_id());
		
		customerService.removeByID(customer.getCust_id());
		
		return "remove_suc";
	}

	

}
