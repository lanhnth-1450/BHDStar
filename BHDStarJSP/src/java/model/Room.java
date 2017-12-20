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
public class Room implements Serializable {
    private int id;
    private String name;
    private String type;
    private int cinema_id;
    private Seat[] seats;

    public Room() {
    }

    public Room(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Room(int id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public Room(int id, String name, String type, int cinema_id) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.cinema_id = cinema_id;
    }

    public Room(int id, String name, String type, Seat[] seats) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.seats = seats;
    }

    public Room(int id, String name, String type, int cinema_id, Seat[] seats) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.cinema_id = cinema_id;
        this.seats = seats;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getCinema_id() {
        return cinema_id;
    }

    public void setCinema_id(int cinema_id) {
        this.cinema_id = cinema_id;
    }

    public Seat[] getSeats() {
        return seats;
    }

    public void setSeats(Seat[] seats) {
        this.seats = seats;
    }
    
    
}
