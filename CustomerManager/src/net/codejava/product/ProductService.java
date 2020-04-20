package net.codejava.product;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepo;
	
	@Autowired
	private CustomerRepository customerRepo;
	
	public List<Product> listAll(){
		return (List<Product>) productRepo.findAll();
	}

	public void save(Product product) {
		// TODO Auto-generated method stub
		productRepo.save(product);
	}
	
	public Product get(Long id) {
		Optional<Product> result=productRepo.findById(id);
		return result.get();
	}
	
	public void delete(long id) {
		productRepo.deleteById(id);
	}
	
	public List<Product> search(String keyword){
		return productRepo.search(keyword);
	}

	public Customer customerExists(String name, String password) {
		try {
			List<Customer> result = customerRepo.findCustomer(name);
			Customer customer = result.get(0);
			if(password.equals(customer.getPassword())) {
				return customer;
			}
			else {
				return null;
			}
		}catch(Exception e) {
			return null;
		}
	}

	public void save(Customer customer) {
		// TODO Auto-generated method stub
		customerRepo.save(customer);
	}
}
