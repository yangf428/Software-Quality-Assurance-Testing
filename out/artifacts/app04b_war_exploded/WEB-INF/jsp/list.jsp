<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/4/25
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有学生</title>
</head>
<body>
    <table>

        <tr>
            <td>ID</td>
            <td>name</td>
            <td>birDate</td>
            <td>gender</td>
        </tr>

        <c:forEach items="${studentList}" var="student" >
            <tr>
                <td>${student.ID}</td>
                <td>${student.name}</td>
                <td>${student.birDate}</td>
                <td>${student.gender}</td>
                <td><a href="/StudentResult/delStudent?name=${student.name}"><button>删除</button></a></td>
                <td><a href="/StudentResult/toupdate?name=${student.name}"><button>编辑</button> </a></td>
            </tr>
        </c:forEach>
    </table>

    <a href="/StudentResult//toindex">
        <input type="submit" value="返回主页">
    </a>

</body>
</html>
