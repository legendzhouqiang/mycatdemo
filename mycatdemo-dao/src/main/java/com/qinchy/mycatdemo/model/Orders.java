package com.qinchy.mycatdemo.model;

public class Orders {
    private Integer id;

    private Integer customerId;

    private Integer sataus;

    private String note;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getSataus() {
        return sataus;
    }

    public void setSataus(Integer sataus) {
        this.sataus = sataus;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }
}