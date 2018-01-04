/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Lanh
 */
public class Ticket implements Serializable {
    private int id;
    private double price;
    private Schedule schedule;
    private Order order;
    private Seat seat;

    public Ticket() {
    }

    public Ticket(int id, double price, Schedule schedule, Seat seat) {
        this.id = id;
        this.price = price;
        this.schedule = schedule;
        this.seat = seat;
    }

    public Ticket(double price, Schedule schedule, Order order, Seat seat) {
        this.price = price;
        this.schedule = schedule;
        this.order = order;
        this.seat = seat;
    }

    public Ticket(int id, double price, Schedule schedule, Order order, Seat seat) {
        this.id = id;
        this.price = price;
        this.schedule = schedule;
        this.order = order;
        this.seat = seat;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public Seat getSeat() {
        return seat;
    }

    public void setSeat(Seat seat) {
        this.seat = seat;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
    
    
}
