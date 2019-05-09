package com.zy.po;

import java.util.Date;

public class Order {
    private Integer id;

    private Integer userid;

    private Integer tableid;

    private Date ordertime;

    private Integer state;

    private Double price;

    private String cookno;

    private String waiterno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getTableid() {
        return tableid;
    }

    public void setTableid(Integer tableid) {
        this.tableid = tableid;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getCookno() {
        return cookno;
    }

    public void setCookno(String cookno) {
        this.cookno = cookno == null ? null : cookno.trim();
    }

    public String getWaiterno() {
        return waiterno;
    }

    public void setWaiterno(String waiterno) {
        this.waiterno = waiterno == null ? null : waiterno.trim();
    }
}