<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/11/24
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StudentList</title>
    <style>
        .div{
            margin: auto;
            width: 400px;
            border: 1px solid red;
            padding: 20px;
            position:absolute;
            left:0;
            top: 0;
            bottom: 0;
            right: 0;
        }
    </style>
</head>
<body>
<div class="div">
    <table>
        <%--table表单 --%>
        <tr><td>id</td>&nbsp;&nbsp;<td>studentname</td>&nbsp;&nbsp;<td>password</td></tr>
        <c:forEach items="${studentList}" var="student" >
            <tr>
                <td>${student.id}</td>
                <td>${student.username}</td>
                <td>${student.password}</td>
                <td><a href="/StudentResult/delStudent?id=${student.id}"><button>删除</button> </a></td>
                <td><a href="/StudentResult/toupdate?id=${student.id}"><button>编辑</button> </a></td>
            </tr>
        </c:forEach>
    </table>
</div>

<div>
    <form action="/StudentResult/selectStudent" method="post">
        <input type="text" name="id" placeholder="请输入要搜索的id">
        <input type="submit" name="name" value="搜索">
    </form>
</div>
<div>
</div>
</body>
</html>