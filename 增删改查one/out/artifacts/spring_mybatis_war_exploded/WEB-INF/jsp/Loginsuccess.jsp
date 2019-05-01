<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/12/14
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>vip界面</title>
</head>
<body>
<h1>欢迎您，亲爱的${student.username}</h1><hr>
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
<%--判断是不是VIP--%>
<%--<a href="/StudentResult/toupdate?id=${student.id}">修改个人信息</a>--%>
<a href="/StudentResult/isVip?username=${student.username}">查看全部用户</a>
</body>
</html>
