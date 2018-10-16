package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.Book;

import java.util.List;

public interface BookDao {
    //书籍列表
    List<Book> getBooks();
}
