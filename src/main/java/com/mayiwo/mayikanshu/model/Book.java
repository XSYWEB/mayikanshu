package com.mayiwo.mayikanshu.model;

import java.util.Date;

public class Book {

    private Integer id;
    private Integer t_id;//书的分类外键
    private  String b_name;//书名
    private  String b_writer;//作者
    private Integer b_price;//价格
    private Date b_time;//收录时间
    private Integer b_click;//点击数
    private Integer b_num;//字数
    private String b_image;//图片
    private String b_describe;//简介
    private String b_recommend;//推荐值

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getT_id() {
        return t_id;
    }

    public void setT_id(Integer t_id) {
        this.t_id = t_id;
    }

    public String getB_name() {
        return b_name;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getB_writer() {
        return b_writer;
    }

    public void setB_writer(String b_writer) {
        this.b_writer = b_writer;
    }

    public Integer getB_price() {
        return b_price;
    }

    public void setB_price(Integer b_price) {
        this.b_price = b_price;
    }

    public Date getB_time() {
        return b_time;
    }

    public void setB_time(Date b_time) {
        this.b_time = b_time;
    }

    public Integer getB_click() {
        return b_click;
    }

    public void setB_click(Integer b_click) {
        this.b_click = b_click;
    }

    public Integer getB_num() {
        return b_num;
    }

    public void setB_num(Integer b_num) {
        this.b_num = b_num;
    }

    public String getB_image() {
        return b_image;
    }

    public void setB_image(String b_image) {
        this.b_image = b_image;
    }

    public String getB_describe() {
        return b_describe;
    }

    public void setB_describe(String b_describe) {
        this.b_describe = b_describe;
    }

    public String getB_recommend() {
        return b_recommend;
    }

    public void setB_recommend(String b_recommend) {
        this.b_recommend = b_recommend;
    }
}
