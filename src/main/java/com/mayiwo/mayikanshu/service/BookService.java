package com.mayiwo.mayikanshu.service;

import com.mayiwo.mayikanshu.dao.AdminDao;
import com.mayiwo.mayikanshu.dao.BookDao;
import com.mayiwo.mayikanshu.model.Admin;
import com.mayiwo.mayikanshu.model.Book;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookService {
    @Resource
    private BookDao bookDao;

    //书籍列表
    public List<Book> getBooks(){
        return bookDao.getBooks();
    };


}

