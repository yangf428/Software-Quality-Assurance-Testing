package com.nenu.yf.mapper;

import com.nenu.yf.entity.Student;

import java.util.List;

/**
 * @ Author     ：YF
 * @ Date       ：Created in 0:03 2018/11/23
 * @ Description：对数据库进行操作(配置好pom.xml,springmvc,applicationContext后开始写mapper)
 */
    public interface StudentMapper {

    public int insertStudent(Student student);
//    void register(@Param("username")String username,@Param("password")String password);

    void deleteStudent(String name);

    public List<Student> selectStudent(String name);

    public List<Student> listAllStudent();

    public Student login(String name);

    boolean updateStudent(Student student);
    public Student findByName(String name);

}
