package com.svalero.DAO;

import com.svalero.Domain.Buy;

import com.svalero.Domain.Product;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.statement.UseRowMapper;

import java.time.LocalDate;
import java.util.List;

public interface ProductDAO {

    @SqlQuery("SELECT * FROM products")
    @UseRowMapper(ProductMapper.class)
    List<Product> getProducts();

    @SqlUpdate("INSERT INTO products (name_p, description_p, format_p, price) VALUES (?, ?, ?, ?)")
    void addProduct(String name, String description, int format, float price);

    @SqlUpdate("DELETE FROM buys WHERE id_product = ?")
    void deleteProduct(int id_product);


    @SqlQuery("SELECT * FROM product WHERE id_product = ?")
    @UseRowMapper(ProductMapper.class)
    List<Buy> searchProduct(int id_product);




}