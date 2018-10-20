package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.Comment;

import java.util.List;

public interface CommentDao {

    //查询数据库中user表的所有记录
    List<Comment> getComments();

    // 根据id删除评论表信息
    int deleteComment(Integer id);
}
