package com.svalero.DAO;

import com.svalero.Domain.Client;
import com.svalero.Domain.Client;
import org.jdbi.v3.core.Handle;

import java.sql.SQLException;
import java.util.List;

public class ClientDAO {

    private Handle db;

    public ClientDAO(Handle db) {
        this.db = db;
    }


    public Client getClient(int id) throws SQLException {
        String sql = "SELECT * FROM clients WHERE id_client = ?";
        Client client = db.createQuery(sql)
                .bind(0, id)
                .mapToBean(Client.class)
                .one();
        return client;
    }

}
