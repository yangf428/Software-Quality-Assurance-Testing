<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/4/25
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查找学生</title>
</head>
<body>
<table>
    <form action="/StudentResult/selectStudent" method="post">

        <tr>
            <td><input type="text" name="name"></td>
            <td><input type="submit" value="搜索"></td>
        </tr>

        <tr>
            <td>ID</td>
            <td>name</td>
            <td>birDate</td>
            <td>gender</td>
        </tr>


    </form>

        <c:forEach items="${studentList}" var="student" varStatus="status">
            <tr>
                <td>${student.ID}</td>
                <td>${student.name}</td>
                <td>${student.birDate}</td>
                <td>${student.gender}</td>
            </tr>
        </c:forEach>

    <%--<c:if test="${studentList == null || fn:length(studentList) == 0}">
        <jsp:forward page="error.jsp"/>
    </c:if>--%>

    <tr>
        <td>
            <a href="/StudentResult/toindex">
                <input type="submit" value="返回主页">
            </a>
        </td>
    </tr>

</table>
</body>
</html>
