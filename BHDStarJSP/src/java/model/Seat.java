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
public class Seat implements Serializable {
    private int id;
    private int row;
    private int col;
    private String type;
    private Room room;

    public Seat() {
    }

    public Seat(int id, int row, int col, String type) {
        this.id = id;
        this.row = row;
        this.col = col;
        this.type = type;
    }

    public Seat(int id, int row, int col, String type, Room room) {
        this.id = id;
        this.row = row;
        this.col = col;
        this.type = type;
        this.room = room;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}
