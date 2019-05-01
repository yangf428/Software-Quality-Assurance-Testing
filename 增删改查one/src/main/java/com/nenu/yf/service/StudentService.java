package com.nenu.yf.service;

import com.nenu.yf.entity.Student;
import com.nenu.yf.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//写好mapper以后写service和studentmapper中的sql语句
@Service
@Transactional
public class StudentService {
    @Autowired
    private StudentMapper studentMapper;

    /**
     * 注册
     */
    public Student insertStudent(Student student) {
        if (student.getName().equals("")) {
            throw new RuntimeException("Name is null");
        } else if (student.getID() == 0) {
            throw new RuntimeException("ID is null");
        } else if (student.getGender() == 0)
            throw new RuntimeException("gender is null");
        else if (student.getBirDate() == null) {
            throw new RuntimeException("birDate is null");
        }
        studentMapper.insertStudent(student);
        return student;
    }

    /**
     * 根据name进行查询
     */

    public List<Student> selectStudent(String name) {
        List<Student> student = (List<Student>) studentMapper.selectStudent(name);
        return student;
    }


    /**
     * 根据name进行删除
     */
    public Student deleteStudent(String name) {
        studentMapper.deleteStudent(name);
        return null;
    }


    /**
     * 根据 name 修改
     */
    public Student findByName(String name) {
        Student student = studentMapper.findByName(name);
        return student;
    }

    public boolean updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }


    /**
     * 显示所有的用户
     */
    public List<Student> listAllStudent() {
        List<Student> student = studentMapper.listAllStudent();
        return student;
    }


    /**
     * 学生id name登陆
     */

    public boolean login(int ID, String name) {
        //对输入账号进行查询,取出数据库中保存对信息
        Student student = studentMapper.login(name);
        if (student != null) {
            if (student.getID() == ID && student.getName().equals(name))
                return true;
        }
        return false;
    }

}
/**
 * @ Author     ：MI
 * @ Date       ：Created in 0:07 2018/11/23
 * @ Description：提供方法，业务处理层
 * <p>
 * 注册
 * @param student
 * @return 根据id查询
 * @param id
 * @return 根据id删除
 * <p>
 * 根据 id 修改
 * <p>
 * 显示所有的用户
 * <p>
 * 用户登陆
 *//*


//写好mapper以后写service和studentmapper中的sql语句
@Service
@Transactional
public class StudentService {
    @Autowired
    private StudentMapper studentMapper;

    */
/**
 * 注册
 *
 * @param student
 * @return
 *//*

    public Student insertStudent(Student student) {
        if (student.getUsername().equals("")) {
            throw new RuntimeException("Name is null");
        }
        studentMapper.insertStudent(student);
        return student;
    }
//    public void Regist(Student student) {
//        studentMapper.register(student.getUsername(),student.getPassword());
//    }

    */
/**
 * 根据id查询
 *
 * @param id
 * @return
 *//*

    public List<Student> selectStudent(String id) {
        int id1 = Integer.parseInt(id);
        List<Student> student = studentMapper.selectStudent(id1);
        return student;
    }

    */
/**
 * 根据id删除
 *//*

    public Student deleteStudent(String id) {
        int id2 = Integer.parseInt(id);
        studentMapper.deleteStudent(id2);
        return null;
    }

    */
/**
 * 根据 id 修改
 *//*

    public Student findById(int id) {
        Student student = studentMapper.findById(id);
        return student;
    }
    public boolean updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }


    */
/**
 * 显示所有的用户
 *//*

    public List<Student> listAllStudent() {
        List<Student> student = studentMapper.listAllStudent();
        return student;
    }


    */
/**
 * 用户登陆
 *//*


        public boolean login(String username, String password) {
            //对输入账号进行查询,取出数据库中保存对信息
            Student student = studentMapper.login(username);
            if (student != null) {
                if (student.getUsername().equals(username) && student.getPassword().equals(password))
                    return true;
            }
            return false;
        }


}*/
