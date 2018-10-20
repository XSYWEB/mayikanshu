package dao;

import com.mayiwo.mayikanshu.dao.BookDao;
import com.mayiwo.mayikanshu.model.Book;
import com.mayiwo.mayikanshu.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.Date;
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
    //添加书籍测试
    @Test
    public void addBook(){
        Book book=new Book();
        book.setB_time(new Date());
        book.setB_click(333);
        book.setB_describe("不好看");
        book.setB_image(null);
        book.setB_name("我不吃西红柿");
        book.setB_num(1425);
        book.setB_price(5);
        book.setB_recommend(100);
        book.setB_writer("番茄大大");
      bookDao.addBook(book);
        bookDao.addBook(book);
    }

    //书籍删除测试
    @Test
    public void deleteBook(){
       bookDao.deleteBook(2);
    }

    //跳转到修改页面
    public void toUpdateBook(Integer id){
        System.out.println( bookDao.toUpdateBook(2));

    }
}
