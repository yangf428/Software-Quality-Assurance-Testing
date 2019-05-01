package com.nenu.yf.controller;

import com.nenu.yf.entity.Student;
import com.nenu.yf.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @ Author     ：YF
 * @ Date       ：Created in 9:01 2019/04/10
 * @ Description：控制层，与前端交互
 */


@Controller
@RequestMapping("/StudentResult")
public class StudentController {

    //添加日志器
    // private static final Log logger = LogFactory.getLog(StudentController.class);

    /*
      跳转到首页
     */
    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/toindex", method = RequestMethod.GET)
    public String toindex() {
        return "index";
    }


    /*
      输出（所有学生），list页
    */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listAllStudent(HttpServletRequest request, Student student) {
        List<Student> list = null;//初始化
        list = studentService.listAllStudent();
        request.setAttribute("studentList", list);
        return "list";//jsp的名字
    }



    /**
     * 页面跳转
     * 添加student
     * 登陆
     */
    @RequestMapping(value = "/toadd", method = RequestMethod.GET)
    public String toadd() {
        return "addstudent";
    }

    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudent(Student student, HttpServletRequest request) {
        boolean loginType = studentService.login(student.getID(), student.getName());
        if (loginType) {
            return "error";
        }
        studentService.insertStudent(student);
        return "success";
    }


    /**
     * 删除学生
     */
    @RequestMapping(value = "/todel", method = RequestMethod.GET)
    public String todel() {
        return "delstudent";
    }

    @RequestMapping(value = "/delStudent", method = RequestMethod.GET)
    public String delStudent(HttpServletRequest request) {
        String name1 = request.getParameter("name");
        System.out.println(name1);
//           int id3=Integer.parseInt(id);
        studentService.deleteStudent(name1);
        return "success";
    }

    /**
     * 查询一个学生
     */
    @RequestMapping(value = "/toselect", method = RequestMethod.GET)
    public String toselect() {
        return "selectstudent";
    }

    @RequestMapping(value = "/selectStudent", method = RequestMethod.POST)
    public String selectStudent(HttpServletRequest request, Student student) {
        String name1 = request.getParameter("name");
        //System.out.println(name1);
        List<Student> list = studentService.selectStudent(name1);
        request.setAttribute("studentList", list);
        if (list == null) {
            return "error";
        } else {
            return "selectstudent";
        }
//           System.out.println(studentServer.selectStudent(id1));
    }


    /**
     * 编辑用户
     */
    @RequestMapping(value = "/toupdate", method = RequestMethod.GET)
    public String toupdate(@RequestParam String name, Model model) {
        Student student = studentService.findByName(name);
        model.addAttribute("student", student);
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(Student student, HttpServletRequest request, Model model) {
        if (studentService.updateStudent(student)) {
            student = studentService.findByName(student.getName());
            request.setAttribute("student", student);
            model.addAttribute("student", student);
            return "success";
        } else {
            return "error";
        }
    }

    /**
     * 登陆
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(Student student, Model model) {
        boolean loginType = studentService.login(student.getID(), student.getName());
        if (loginType) {
            //如果验证通过,则将用户信息传到前台
            List<Student> list = null;//初始化
            list = studentService.listAllStudent();
            model.addAttribute("studentList", list);
            return "list";
        } else {
            //若不对,则将错误信息显示到错误页面
            return "error";
        }
    }

}

