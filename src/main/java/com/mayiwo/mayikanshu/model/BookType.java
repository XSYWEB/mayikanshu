package com.mayiwo.mayikanshu.model;

public class BookType {

    private Integer id;
    private String t_name;  //分类名
    private String t_image; //分类图片
    private Integer t_num;  //该分类下的书的数量

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_image() {
        return t_image;
    }

    public void setT_image(String t_image) {
        this.t_image = t_image;
    }

    public Integer getT_num() {
        return t_num;
    }

    public void setT_num(Integer t_num) {
        this.t_num = t_num;
    }
}
