package com.deepanshu.dao;

import com.deepanshu.model.Product;
import java.util.List;

public interface ProductDao {

    void saveProduct(Product product);
    List<Product> getAllProducts();
    Product getProductById(int id);
    Product getProductByName(String name);
    void updateProduct(Product product);
    void deleteProduct(int id);
}
