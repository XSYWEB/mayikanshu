package com.mayiwo.mayikanshu.model;

public class Chapter {
    private Integer id;
    private Book b_id;
    private String chapters; //章节
    private String content;  //内容


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChapters() {
        return chapters;
    }

    public void setChapters(String chapters) {
        this.chapters = chapters;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
