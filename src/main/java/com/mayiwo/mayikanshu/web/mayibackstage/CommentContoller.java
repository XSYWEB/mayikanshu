package com.mayiwo.mayikanshu.web.mayibackstage;

import com.mayiwo.mayikanshu.model.Comment;
import com.mayiwo.mayikanshu.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/mayibackstage/comment")
public class CommentContoller {

        @Resource
        private CommentService commentService;

        //评论列表
        @RequestMapping(value = "/commentlist" ,method= RequestMethod.GET)
        public String getUsers(HttpServletRequest request){
            List<Comment> commentList=commentService.getComments();
            request.setAttribute("commentList",commentList);
            return "jsp/mayibackstage/comment.jsp";
        }
    //根据id删除评论
    @RequestMapping(value = "/deletecomment", method = RequestMethod.GET)
    public String deleteComment(Integer id) {
        commentService.deleteComments(id);
        return "mayibackstage/comment/commentlist";
    }



    }
