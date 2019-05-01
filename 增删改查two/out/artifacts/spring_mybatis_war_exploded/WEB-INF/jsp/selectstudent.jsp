<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/11/24
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索</title>
</head>
<body>
<div >
    <form action="/StudentResult/selectStudent" method="post">
        <table>
            <tr><td>id</td>&nbsp;&nbsp;<td>username</td>&nbsp;&nbsp;<td>password</td>&nbsp;&nbsp;<td>tel</td>
            <c:forEach items="${studentList}" var="student" varStatus="status">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.username}</td>
                    <td>${student.password}</td>
                </tr>
            </c:forEach>

        </table>
    </form>
    <tr><td><a href="/StudentResult/list"><input type="submit" value="返回主页"></a> </td></tr>
</div>
</body>
</html>