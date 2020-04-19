package net.codejava.product;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<Product,Long> {
	  @Query(value = "SELECT c FROM Product c WHERE c.title LIKE '%' || :keyword || '%'"
	            + " OR c.category LIKE '%' || :keyword || '%'"
	            + " OR c.manufacturer LIKE '%' || :keyword || '%'")
	public List<Product> search(@Param("keyword") String keyword);
}
