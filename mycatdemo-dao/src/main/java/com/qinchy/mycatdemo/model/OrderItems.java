package com.qinchy.mycatdemo.model;

public class OrderItems {
    private String orderItemsId;

    private String orderId;

    public String getOrderItemsId() {
        return orderItemsId;
    }

    public void setOrderItemsId(String orderItemsId) {
        this.orderItemsId = orderItemsId == null ? null : orderItemsId.trim();
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }
}