package com.mayiwo.mayikanshu.dao;

import com.mayiwo.mayikanshu.model.Chapter;

import java.util.List;

public interface ChapterDao {

     //查询所有章节
     List<Chapter> getChapter();
     /*
      * 添加章节
      * */
     int addChapter(Chapter hapter);
}
