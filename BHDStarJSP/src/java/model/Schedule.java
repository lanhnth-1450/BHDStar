/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author Lanh
 */
public class Schedule implements Serializable {
    private int id;
    private Time time;
    private Date date;
    private Room room;
    private Film film;
    private double price;

    public Schedule() {
    }

    public Schedule(int id, Time time, Date date, Room room, Film film, double price) {
        this.id = id;
        this.time = time;
        this.date = date;
        this.room = room;
        this.film = film;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
