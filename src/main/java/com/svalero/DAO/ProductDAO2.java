package com.svalero.DAO;

import com.svalero.Domain.Product;
import com.svalero.Domain.Client;
import org.jdbi.v3.core.Handle;

import java.sql.SQLException;
import java.util.List;

public class ProductDAO2 {

    private Handle db;

    public ProductDAO2(Handle db) {
        this.db = db;
    }


    public Product getProduct(int id) throws SQLException {
        String sql = "SELECT * FROM products WHERE id_product = ?";
        Product product = db.createQuery(sql)
                .bind(0, id)
                .mapToBean(Product.class)
                .one();
        return product;
    }

}
