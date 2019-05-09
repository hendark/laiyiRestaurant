package com.zy.po;

public class Food {
    private Integer id;

    private Integer categoryid;

    private String fname;

    private String furl;

    private Double fprice;

    private Double fdprice;

    private Integer fischara;

    private Integer fstate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname == null ? null : fname.trim();
    }

    public String getFurl() {
        return furl;
    }

    public void setFurl(String furl) {
        this.furl = furl == null ? null : furl.trim();
    }

    public Double getFprice() {
        return fprice;
    }

    public void setFprice(Double fprice) {
        this.fprice = fprice;
    }

    public Double getFdprice() {
        return fdprice;
    }

    public void setFdprice(Double fdprice) {
        this.fdprice = fdprice;
    }

    public Integer getFischara() {
        return fischara;
    }

    public void setFischara(Integer fischara) {
        this.fischara = fischara;
    }

    public Integer getFstate() {
        return fstate;
    }

    public void setFstate(Integer fstate) {
        this.fstate = fstate;
    }
}