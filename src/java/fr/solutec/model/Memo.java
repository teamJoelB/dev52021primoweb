/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author joelg
 */
public class Memo {
    
    private int id;
    private String memo;
    private User u;

    public Memo() {
    }

    public Memo(int id, String memo, User u) {
        this.id = id;
        this.memo = memo;
        this.u = u;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public User getU() {
        return u;
    }

    public void setU(User u) {
        this.u = u;
    }
    
    
    
    
    
}
