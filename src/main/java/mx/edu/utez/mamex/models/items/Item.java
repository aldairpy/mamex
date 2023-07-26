package mx.edu.utez.mamex.models.items;

import java.sql.Date;
import java.util.Map;

public class Item {
    private int id;
    private String name;
    private String description;
    private String available;
    private String color;
    private double unitPrice;
    private Date createDate;
    private Date updateDate;
    private int stock;
    private String notes;
    private Map<String, byte[]> images;

    public Item(int id, String name, String description, String available, String color, double unitPrice, Date createDate, Date updateDate, int stock, String notes, Map<String, byte[]> images) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.available = available;
        this.color = color;
        this.unitPrice = unitPrice;
        this.createDate = createDate;
        this.updateDate = updateDate;
        this.stock = stock;
        this.notes = notes;
        this.images = images;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Map<String, byte[]> getImages() {
        return images;
    }

    public void setImages(Map<String, byte[]> images) {
        this.images = images;
    }
}



