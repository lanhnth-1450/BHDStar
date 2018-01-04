/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Lanh
 */
public class Order {
    private int id;
    private Date date;
    private int status;
    private Client client;
    private ArrayList<Ticket> listTicket;
    private float discount;
    private float grandtotal;

    public Order() {
    }

    public Order(int id, Date date, int status, Client client, float grandtotal) {
        this.id = id;
        this.date = date;
        this.status = status;
        this.client = client;
        this.grandtotal = grandtotal;
    }

    

    public Order(int id, Date date, int status, Client client, ArrayList<Ticket> listTicket, float discount, float grandtotal) {
        this.id = id;
        this.date = date;
        this.status = status;
        this.client = client;
        this.listTicket = listTicket;
        this.discount = discount;
        this.grandtotal = grandtotal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public ArrayList<Ticket> getListTicket() {
        return listTicket;
    }

    public void setListTicket(ArrayList<Ticket> listTicket) {
        this.listTicket = listTicket;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public float getGrandtotal() {
        return grandtotal;
    }

    public void setGrandtotal(float grandtotal) {
        this.grandtotal = grandtotal;
    }
    
    
}
