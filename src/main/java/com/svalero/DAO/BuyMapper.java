package com.svalero.DAO;

import com.svalero.Domain.Buy;
import com.svalero.Domain.Client;
import com.svalero.Domain.Product;
import com.svalero.Domain.Client;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

import static com.svalero.DAO.Database.db;
import static com.svalero.DAO.Database.db;

public class BuyMapper implements RowMapper<Buy> {

    @Override
    public Buy map(ResultSet rs, StatementContext ctx) throws SQLException {
<<<<<<< HEAD


        Database.connect();
        Client client = Database.jdbi.withExtension(ClientDAO2.class,
                dao -> dao.searchClient(rs.getInt("id_client")));

        Product product = Database.jdbi.withExtension(ProductDAO.class,
                dao -> dao.searchProduct(rs.getInt("id_product")));

=======
        ClientDAO clientDAO = new ClientDAO(db);
        ProductDAO2 productDAO2 = new ProductDAO2(db);
        Client client = clientDAO.getClient(rs.getInt("id_Client"));
        Product product = productDAO2.getProduct(rs.getInt("id_product"));
>>>>>>> 2b3e99bc3d9effd93a9632b89a122ebcaf05f8e6
        return new Buy(rs.getInt("id_buy"),
                client,
                product,
                rs.getDate("buy_date").toLocalDate()
                );
    }
}
