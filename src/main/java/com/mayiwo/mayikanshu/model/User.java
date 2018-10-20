package com.mayiwo.mayikanshu.model;

import java.math.BigInteger;
import java.util.Date;

public class User {
    private Integer id;
    private String u_name;  //昵称
    private Integer u_user;  //账号
    private String u_password;  //密码
    private String u_images;  //头像
    private Integer u_sex;     //性别
    private BigInteger u_phone;  //电话
    private String u_introduce;  //个性签名
    private Integer u_currency;  //书豆
    private Date u_create_time;  //创建时间
    private Integer u_age;   //年龄



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public Integer getU_user() {
        return u_user;
    }

    public void setU_user(Integer u_user) {
        this.u_user = u_user;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_images() {
        return u_images;
    }

    public void setU_images(String u_images) {
        this.u_images = u_images;
    }

    public Integer getU_sex() {
        return u_sex;
    }

    public void setU_sex(Integer u_sex) {
        this.u_sex = u_sex;
    }

    public BigInteger getU_phone() {
        return u_phone;
    }

    public void setU_phone(BigInteger u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_introduce() {
        return u_introduce;
    }

    public void setU_introduce(String u_introduce) {
        this.u_introduce = u_introduce;
    }

    public Integer getU_currency() {
        return u_currency;
    }

    public void setU_currency(Integer u_currency) {
        this.u_currency = u_currency;
    }

    public Date getU_create_time() {
        return u_create_time;
    }

    public void setU_create_time(Date u_create_time) {
        this.u_create_time = u_create_time;
    }

    public Integer getU_age() {
        return u_age;
    }

    public void setU_age(Integer u_age) {
        this.u_age = u_age;
    }
}

