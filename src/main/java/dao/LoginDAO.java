package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import bean.Customer;

public class LoginDAO extends DAO {

    public Customer search(String login, String password) throws Exception {

        Connection con = getConnection();
        
        // ここが超危険
        String sql = "select * from customer where login='" + login
                   + "' and password='" + password + "'";

        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);

        Customer customer = null;

        if (rs.next()) {
            customer = new Customer();
            customer.setId(rs.getInt("id"));
            customer.setLogin(rs.getString("login"));
            customer.setPassword(rs.getString("password"));
        }

        rs.close();
        st.close();
        con.close();

        return customer;
    }
}