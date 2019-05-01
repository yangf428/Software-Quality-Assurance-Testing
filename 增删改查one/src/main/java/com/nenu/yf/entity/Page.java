package com.nenu.yf.entity;

import java.util.List;

/**
 * @ Author     ：MI
 * @ Date       ：Created in 15:48 2018/12/20
 * @ Description：分页的实体类
 */
public class Page<T> {
    private int pageindex;//当前页数
    private int pagesize;//每页条数
    private int pagetotalpages;//总页数
    private int pagetotalcount;//总记录条数

    public int getPagetotalcount() {
        return pagetotalcount;
    }

    public void setPagetotalcount(int pagetotalcount) {
        this.pagetotalcount = pagetotalcount;
    }

    private List<Student> studentList;

    public int getPageindex() {
        return pageindex;
    }

    public void setPageindex(int pageindex) {
        this.pageindex = pageindex;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getPagetotalpages() {
        return pagetotalpages;
    }

    public void setPagetotalpages(int pagetotalpages) {
        this.pagetotalpages = pagetotalpages;
    }

    public List<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

    @Override
    public String toString() {
        return "Page{" +
                "pageindex=" + pageindex +
                ", pagesize=" + pagesize +
                ", pagetotalpages=" + pagetotalpages +
                ", studentList=" + studentList +
                '}';
    }
}
