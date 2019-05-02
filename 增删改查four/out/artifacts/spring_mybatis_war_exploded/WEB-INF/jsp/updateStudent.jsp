<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/11/24
  Time: 2:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>edit</h1>
<form action="/StudentResult/updateStudent" method="post">
    <input type="hidden" name="id" value="${student.id }"/>
    姓名：<input type="text" name="username" value="${student.username }"/>
    密码：<input type="text" name="password" value="${student.password }"/>
    <input type="submit" value="编辑" />
</form>
</body>
</html>
