package com.deepanshu.service;

import com.deepanshu.dao.ProductDao;
import com.deepanshu.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

// Marks this class as a Spring Service component
@Service
public class ProductServiceImpl implements ProductService {

    //---- Injecting the ProductDao bean to communicate with the database
    @Autowired
    private ProductDao productDao;

    // @Transactional automatically begins a database transaction before execution
    // and commits it after the method finishes. If an exception occurs, it rolls back.

    @Override
    @Transactional
    public void saveProduct(Product product) {
        productDao.saveProduct(product);
    }

    @Override
    @Transactional
    public List<Product> getAllProducts() {
        return productDao.getAllProducts();
    }

    @Override
    @Transactional
    public Product getProductById(int id) {
        return productDao.getProductById(id);
    }

    @Override
    @Transactional
    public Product getProductByName(String name) {
        return productDao.getProductByName(name);
    }

    @Override
    @Transactional
    public void updateProduct(Product product) {
        productDao.updateProduct(product);
    }

    @Override
    @Transactional
    public void deleteProduct(int id) {
        productDao.deleteProduct(id);
    }
}
