package mx.edu.utez.mamex.models.orders;

import java.sql.Date;

public class Order {
    private int id;
    private String state;
    private Date date;
    private Date updateDate;
    private int userId;

    public Order(int id, String state, Date date, Date updateDate, int userId) {
        this.id = id;
        this.state = state;
        this.date = date;
        this.updateDate = updateDate;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}

