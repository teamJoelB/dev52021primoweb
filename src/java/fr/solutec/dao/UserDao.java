/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joelg
 */
public class UserDao {

    public static User getByLoginAndPassword(String login, String Password) throws SQLException {
        User u = null;

        String sql = "SELECT * FROM user WHERE login = ? AND password = ?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, Password);

        ResultSet rs = prepare.executeQuery();
        if (rs.next()) {
            u = new User();
            u.setId(rs.getInt("iduser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
        }
        return u;
    }

    public static void insertUser(User u) throws SQLException {
        String sql = "INSERT INTO user (nom, prenom, login, password) VALUES(?, ?, ?, ?)";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, u.getNom());
        prepare.setString(2, u.getPrenom());
        prepare.setString(3, u.getLogin());
        prepare.setString(4, u.getPassword());

        prepare.execute();
    }

    public static List<User> getAllUser() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM user";
        Connection connexion = AccessBd.getConnection();
        Statement state = connexion.createStatement();

        ResultSet rs = state.executeQuery(sql);
        while (rs.next()) {
            User u = new User();
            u.setId(rs.getInt("iduser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));

            users.add(u);
        }
        return users;
    }
}
