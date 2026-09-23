package com.deepanshu.service;

import com.deepanshu.model.Product;

import java.util.List;

public interface ProductService {

    void saveProduct(Product product);
    List<Product> getAllProducts();
    Product getProductById(int id);
    Product getProductByName(String name);
    void updateProduct(Product product);
    void deleteProduct(int id);

}
