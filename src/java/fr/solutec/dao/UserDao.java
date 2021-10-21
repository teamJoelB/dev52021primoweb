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

/**
 *
 * @author joelg
 */
public class UserDao {
    public static User getByLoginAndPassword(String login, String Password) throws  SQLException{
        User u = null;
        
        String sql = "SELECT * FROM user WHERE login = ? AND password = ?";
        Connection connexion = AccessBd.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, Password);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            u = new User();
            u.setId(rs.getInt("iduser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
            u.setPassword(rs.getString("password"));
        }
        return u;
    }
}
