package com.mayiwo.mayikanshu.web.mayibackstage;

import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/mayikanshu")
public class BookController {

    @Resource
    private BookService bookService;

    //书籍列表
    @RequestMapping(value = "booklist" ,method= RequestMethod.GET)
    public String getBooks(HttpServletRequest request){
        List<Book> booklist=bookService.getBooks();
        request.setAttribute("booklist",booklist);
        return "mayibackstage/books.jsp";
    }

}
