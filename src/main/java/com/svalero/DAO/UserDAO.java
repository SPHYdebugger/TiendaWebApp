package com.svalero.DAO;

import com.svalero.Domain.Client;
import com.svalero.Domain.Client;
import com.svalero.Domain.User;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.statement.UseRowMapper;

import java.util.List;


public interface UserDAO {




    @SqlQuery("SELECT * FROM users WHERE user_name = ? AND user_password = ?")
    @UseRowMapper(UserMapper.class)
    User getUsers(String user_name, String password);


}
