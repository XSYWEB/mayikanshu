package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.Book;

import java.util.List;

public interface BookDao {
    //书籍列表
    List<Book> getBooks();

    //添加书籍
    int addBook(Book book);

    //删除书籍
    int deleteBook(Integer id);

    //跳转到修改页面
    Book toUpdateBook(Integer id);

    //修改产品分类（提交表单后）
    int doUpdateBook(Book book);

}
