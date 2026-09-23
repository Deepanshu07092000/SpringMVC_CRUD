package com.deepanshu.controller;

import com.deepanshu.model.Product;
import com.deepanshu.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

// Marks this class as a Spring MVC Controller handling web requests
@Controller
public class ProductController {

    //---------- Injecting the Service layer to execute business logic
    @Autowired
    private ProductService productService;

    //--------- 1. Display Home Page / Product List
    @GetMapping("/")
    public String showHomePage(Model model) {
        List<Product> products = productService.getAllProducts();
        model.addAttribute("products", products);
        return "index";
    }

    //-------------- Search Product by ID or Name
    @GetMapping("/search-product")
    public String searchProduct(@RequestParam("search") String search, Model model) {

        Product product = null;

        //--------- Check whether the search value is an ID
        try {
            int id = Integer.parseInt(search);
            product = productService.getProductById(id);
        } catch (NumberFormatException e) {
            //----- If it is not a number, search by product name
            product = productService.getProductByName(search);
        }
        model.addAttribute("searchProduct", product);
        return "index";
    }

    //-------------- 2. Show Add Product Form
    @GetMapping("/show-add-form")
    public String showAddProductForm(Model model) {
        model.addAttribute("product", new Product());
        return "add_weapon";
    }

    //-------------  3. Handle Add/Save Product Form Submission
    @PostMapping("/save-product")
    public String saveProduct(@ModelAttribute("product") Product product) {
        productService.saveProduct(product);
        return "redirect:/";         // Redirects back to home page after saving
    }

    //-------------  4. Show Update Product Form populated with existing data
    @GetMapping("/show-update-form/{id}")
    public String showUpdateProductForm(@PathVariable("id") int id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "update_weapon";
    }

    //--------------  5. Handle Update Product Form Submission
    @PostMapping("/update-product")
    public String updateProduct(@ModelAttribute("product") Product product) {
        productService.updateProduct(product);
        return "redirect:/"; // Redirects back to home page after updating
    }

    //--------------  6. Handle Delete Product Request
    @GetMapping("/delete-product/{id}")
    public String deleteProduct(@PathVariable("id") int id) {
        productService.deleteProduct(id);
        return "redirect:/"; // Redirects back to home page after deletion
    }
}
