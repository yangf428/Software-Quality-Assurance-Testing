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

    //删除学生
    void deleteStudent(String name);

    //搜索学生
    public List<Student> selectStudent(String name);

    //显示所有学生
    public List<Student> listAllStudent();

    //登录学生
    public Student login(String name);

    //修改学生信息
    boolean updateStudent(Student student);

    //查找学生
    public Student findByName(String name);
}
