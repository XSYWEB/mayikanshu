package com.mayiwo.mayikanshu.service;

import com.mayiwo.mayikanshu.dao.CommentDao;
import com.mayiwo.mayikanshu.model.Comment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommentService {

        @Resource
        private CommentDao commentDao;
        //查询数据库中user表的所有记录
        public List<Comment> getComments() {
            return commentDao.getComments();
        }

    // 根据id删除评论表信息
    public void deleteComments(Integer id) {
       commentDao.deleteComment(id);
    }

    }
