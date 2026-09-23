package com.deepanshu.dao;

import com.deepanshu.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

// Marks this class as a Spring Data Access Object (DAO) bean so Spring can detect and manage it
@Repository
public class ProductDaoImpl implements ProductDao {

    //------ Injecting the Hibernate SessionFactory bean configured in AppConfig.java
    @Autowired
    private SessionFactory sessionFactory;

    //------- Helper method to obtain the current active Hibernate session bound to the ongoing transaction
    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    //-------- Persists a new Product object as a new record in the 'products' table
    @Override
    public void saveProduct(Product product) {
        getCurrentSession().save(product);
    }

    //------ Retrieves all Product records from the database using HQL (Hibernate Query Language)
    @Override
    public List<Product> getAllProducts() {
        return getCurrentSession().createQuery("from Product", Product.class).list();
    }

    //------ Fetches a single Product by its primary key (id). Returns null if not found.
    @Override
    public Product getProductById(int id) {
        return getCurrentSession().get(Product.class, id);
    }

    //------- Search product by name
    @Override
    public Product getProductByName(String name) {

        return getCurrentSession()
                .createQuery("from Product where name = :name", Product.class)
                .setParameter("name", name)
                .uniqueResult();
    }

    //------ Updates an existing record in the database matching the product's ID
    @Override
    public void updateProduct(Product product) {
        getCurrentSession().update(product);
    }

    //-------- Removes a Product record from the database if it exists
    @Override
    public void deleteProduct(int id) {
        Product product = getProductById(id);
        if (product != null) {
            getCurrentSession().delete(product);
        }
    }


}
