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
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/mayibackstage/book")
public class BookController {

    @Resource
    private BookService bookService;
    @Resource
    private BookTypeService bookTypeService;

    //书籍列表
    @RequestMapping(value = "/booklist", method = RequestMethod.GET)
    public String getBooks(HttpServletRequest request) {
        List<Book> booklist = bookService.getBooks();
        request.setAttribute("booklist", booklist);
        return "jsp/mayibackstage/books.jsp";
    }

    //删除书
    @RequestMapping(value = "/deleteBook", method = RequestMethod.GET)
    public String deleteBook(Integer id, HttpServletRequest request) {
        bookService.deletebook(id);
        return "/mayibackstage/book/booklist";
    }

    //到添加书页面
    @RequestMapping(value = "/toAddBook")
    public String toAddBook(HttpServletRequest request) {
        List<BookType> bookTypeslist = bookTypeService.getBookTypes();
        request.setAttribute("bookTypeslist", bookTypeslist);
        return "jsp/mayibackstage/bookadd.jsp";
    }

    //添加书籍
    @RequestMapping(value = "/doAddBook", method = RequestMethod.POST)
    public String doAddBook(Book book, HttpServletRequest request) {
        bookService.addBook(book);
        return "/mayibackstage/book/toAddBook";
    }

    //跳转到修改页面
    @RequestMapping(value = "/toUpdateBook", method = RequestMethod.GET)
    public String toUpdateBook(HttpServletRequest request, Integer id) {

        List<BookType> bookTypeslist = bookTypeService.getBookTypes();
        request.setAttribute("bookTypeslist", bookTypeslist);

        request.setAttribute("book", bookService.toUpdateBook(id));

        return "jsp/mayibackstage/bookupdate.jsp";
    }

    /*
     * 修改产品 谢深悦 20180604
	 */
    @RequestMapping(value = "/UpdateProductManage", method = RequestMethod.POST)
    public String UpdateProductManage(HttpServletRequest request,
                                      Book book, HttpSession session) {
        List<BookType> bookTypeslist = bookTypeService.getBookTypes();
        request.setAttribute("bookTypeslist", bookTypeslist);

        bookService.doUpdateBook(book);

        request.setAttribute("myMessage", "修改成功");

        return "jsp/mayibackstage/bookupdate.jsp";
    }
}
