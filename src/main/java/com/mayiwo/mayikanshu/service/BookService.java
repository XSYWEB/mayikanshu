package com.mayiwo.mayikanshu.service;

import com.mayiwo.mayikanshu.dao.BookDao;
import com.mayiwo.mayikanshu.model.Book;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class BookService {
    @Resource
    private BookDao bookDao;

    //书籍列表
    public List<Book> getBooks() {
        return bookDao.getBooks();
    }

    //添加书籍
    public Boolean addBook(Book book) {
        Boolean status = false;
        book.setB_time(new Date());
        int i = bookDao.addBook(book);
        if (i > 0) {
            status = true;
        }
        return status;
    }

    //删除书籍
    public Boolean deletebook(Integer id) {
        Boolean status = false;
        int i = bookDao.deleteBook(id);
        if (i > 0) {
            status = true;
        }
        return status;
    }

    ;

    // 跳转到修改页面
    public Book toUpdateBook(Integer id) {
        Book book = null;
        if (id != null) {
            book = bookDao.toUpdateBook(id);
        }
        return book;
    }

    //修改产品
    public Boolean doUpdateBook(Book book) {
        Boolean status = false;
        book.setB_time(new Date());
        int i = bookDao.doUpdateBook(book);
        if (i > 0) {
            status = true;
        }
        return status;
    }

    //昨日新增书籍
    public int Yesterday(){
       int yes= bookDao.Yesterday();
        return yes;
    };

    //本周点击数最多的书
    public List<Book> clickbook() {
        return bookDao.clickbook();
    }

}

