package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.model.BookType;

import java.util.List;

public interface BookTypeDao {

    List<BookType> getBookTypes();
}
