<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/4/25
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除</title>
</head>
<body>
    <form action="/StudentResult/delStudent" method="get">

        <table>
            <tr>
                <td>name</td>
                <td>操作</td>
            </tr>
            <tr>
                <td><input type="text" name="name"/></td>
                <td><input type="submit"  value="删除"/></td>
            </tr>
        </table>
    </form>

    <a href="/StudentResult//toindex">
        <input type="submit" value="返回主页">
    </a>

</body>
</html>
