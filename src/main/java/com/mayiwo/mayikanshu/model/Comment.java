package com.mayiwo.mayikanshu.model;

import java.util.Date;

public class Comment {
    private Integer id;     //id
    private String c_comm;  //评论
    private Date c_create_time;   //创建时间
    private String c_b_image;   //书籍图片
    private String c_b_name;   //书籍名字
    private String c_b_writer;   //书籍作者
    private String c_b_type; //书籍类型
    private String c_u_name;  //评论用户名字

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getC_comm() {
        return c_comm;
    }

    public void setC_comm(String c_comm) {
        this.c_comm = c_comm;
    }

    public Date getC_create_time() {
        return c_create_time;
    }

    public void setC_create_time(Date c_create_time) {
        this.c_create_time = c_create_time;
    }

    public String getC_b_image() {
        return c_b_image;
    }

    public void setC_b_image(String c_b_image) {
        this.c_b_image = c_b_image;
    }

    public String getC_b_name() {
        return c_b_name;
    }

    public void setC_b_name(String c_b_name) {
        this.c_b_name = c_b_name;
    }

    public String getC_b_writer() {
        return c_b_writer;
    }

    public void setC_b_writer(String c_b_writer) {
        this.c_b_writer = c_b_writer;
    }

    public String getC_b_type() {
        return c_b_type;
    }

    public void setC_b_type(String c_b_type) {
        this.c_b_type = c_b_type;
    }

    public String getC_u_name() {
        return c_u_name;
    }

    public void setC_u_name(String c_u_name) {
        this.c_u_name = c_u_name;
    }
}
