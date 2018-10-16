package dao;

import com.mayiwo.mayikanshu.dao.BookDao;
import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;


public class BookDaoTest extends SpringJunitTest{
    @Resource
    private BookDao bookDao;

    //书籍列表测试
    @Test
    public void getBooksTest(){
        List<Book> bookList=bookDao.getBooks();
        System.out.println(bookList);
    }
}
