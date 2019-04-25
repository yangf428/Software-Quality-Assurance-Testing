<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/4/25
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
</head>
<body>
    <table>
        <form method="post" action="/StudentResult/addStudent">
            <tr>
                <td>学号：</td>
                <td><input type="number" name="ID"></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>生日：</td>
                <td><input type="text" name="birDate"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input name="gender" type="number"></td>
                <%--<td><input name="gender" type="checkbox">女</td>
                <td><input name="gender" type="checkbox">男</td>--%>
            </tr>
            <tr>
                <td><input type="submit" value="确定添加"></td>
            </tr>
        </form>
    </table>

    <a href="/StudentResult//toindex">
        <input type="submit" value="返回主页">
    </a>

</body>
</html>
