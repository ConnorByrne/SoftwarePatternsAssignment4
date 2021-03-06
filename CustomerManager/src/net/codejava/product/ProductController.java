package net.codejava.product;

import java.util.ArrayList;
import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Scope("session")
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	Customer currentUser= new Customer("New User");
	Admin admin = new Admin("Admin");
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
		
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String userName, @RequestParam String password) {
		ModelAndView mav;
		Customer customer =service.customerExists(userName, password);
		if(customer!=null) {
			 mav = new ModelAndView("index");
			 List<Product> listProduct = service.listAll();
			 mav.addObject("listProduct", listProduct);
			 this.currentUser=customer;
			 mav.addObject("customer", currentUser);
		}
		else {
			mav = new ModelAndView("login");
			mav.addObject("message", "You have entered the wrong username or password");
		}
		return mav;
	}
	
	@RequestMapping("/adminLogin")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("admin_login");

		 mav.addObject("customer", currentUser);
		return mav;
		
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		this.currentUser=null;
		this.admin=null;
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("customer", currentUser);
		return mav;
	}
	
	@RequestMapping("/adminIndex")
	public ModelAndView adminIndex(@RequestParam String userName, @RequestParam String password) {
		ModelAndView mav;
		Admin a1 =service.adminExists(userName, password);
		if(a1!=null) {
			 mav = new ModelAndView("admin_index");
			 List<Product> listProduct = service.listAll();
			 mav.addObject("listProduct", listProduct);
			 this.admin=a1;
			 mav.addObject("admin", admin);
			 mav.addObject("customer", currentUser);
		}
		else {
			mav = new ModelAndView("admin_login");
			mav.addObject("customer", currentUser);
			mav.addObject("message", "You have entered the wrong username or password");
		}
		return mav;
	}
	
	@RequestMapping("/new")
	public String newProductForm(Map<String,Object> model) {
		model.put("product", new Product());
		return"new_product";
	}
	
	@RequestMapping("/createAccount")
	public String newAccountForm(Map<String,Object> model) {
		model.put("customer", new Customer());
		return"new_account";
	}
	
	@RequestMapping(value="/saveProduct",method=RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product) {
		service.save(product);
		return "redirect:/";
	}
	
	@RequestMapping(value="/saveAccount",method=RequestMethod.POST)
	public String saveAccount(@ModelAttribute("customer") Customer customer) {
		service.save(customer);
		return "redirect:/";
	}
	
	
	@RequestMapping("/edit")
	public ModelAndView editProductForm(@RequestParam Long id) {
		ModelAndView mav = new ModelAndView("edit_product");
		Product product = service.get(id);
		mav.addObject("product",product);
		mav.addObject("customer", currentUser);
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteProductForm(@RequestParam Long id) {
	    service.delete(id);
	    return "redirect:/";       
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		ModelAndView mav = new ModelAndView("search");
		List<Product> result = service.search(keyword);
		mav.addObject("result",result);
		mav.addObject("customer",this.currentUser);
		return mav;
	}
	
	@RequestMapping("/addToCart")
	public ModelAndView addToCart(@RequestParam Long id) {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("customer",this.currentUser);
		this.currentUser.addToCart(service.get(id));
		return mav;
	}
	
	@RequestMapping("/checkout")
	public ModelAndView checkout() {
		ModelAndView mav = new ModelAndView("checkout");
		mav.addObject("customer",this.currentUser);
		mav.addObject("listProduct",this.currentUser.getCart());
		return mav;
	}
	
	@RequestMapping("/purchase")
	public ModelAndView purchase() {
		ModelAndView mav = new ModelAndView("index");
		this.currentUser.setCart(new ArrayList<Product>());
		mav.addObject("customer",this.currentUser);
		return mav;
	}
		
	
	

}
