package net.codejava.product;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	@Autowired
	private ProductRepository repo;
	
	public List<Product> listAll(){
		return (List<Product>) repo.findAll();
	}

	public void save(Product product) {
		// TODO Auto-generated method stub
		repo.save(product);
	}
	
	public Product get(Long id) {
		Optional<Product> result=repo.findById(id);
		return result.get();
	}
	
	public void delete(long id) {
		repo.deleteById(id);
	}
	
	public List<Product> search(String keyword){
		return repo.search(keyword);
	}
}
