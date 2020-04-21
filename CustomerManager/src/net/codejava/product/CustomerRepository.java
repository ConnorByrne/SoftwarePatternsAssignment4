package net.codejava.product;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends CrudRepository<Customer,Long> {
	  @Query(value = "SELECT c FROM Customer c WHERE c.name LIKE '%' || :keyword || '%'")
	public List<Customer> findCustomer(@Param("keyword") String keyword);

	  @Query(value = "SELECT c FROM Admin c WHERE c.userName LIKE '%' || :keyword || '%'")
	public List<Admin> findAdmin(@Param("keyword")String userName);

}
