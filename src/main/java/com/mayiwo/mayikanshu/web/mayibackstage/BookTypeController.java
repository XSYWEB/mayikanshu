package com.mayiwo.mayikanshu.web.mayibackstage;

import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.model.BookType;
import com.mayiwo.mayikanshu.service.BookService;
import com.mayiwo.mayikanshu.service.BookTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/mayibackstage/book")
public class BookTypeController {

    @Resource
    private BookTypeService bookTypeService;


}
