package com.mayiwo.mayikanshu.service;

import com.mayiwo.mayikanshu.dao.BookTypeDao;
import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.model.BookType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class BookTypeService {
    @Resource
    private BookTypeDao bookTypeDao ;

    //书籍分类列表
    public List<BookType> getBookTypes(){
        return bookTypeDao.getBookTypes();
    };


}

