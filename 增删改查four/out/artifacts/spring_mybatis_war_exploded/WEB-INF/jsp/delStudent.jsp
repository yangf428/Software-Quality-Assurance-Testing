<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/11/24
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除</title>
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
<form action="/StudentResult/delStudent" method="post">

    <table >
        <tr>
            <td>id</td>
            <td>操作</td>
        </tr>
        <tr>
            <td><input type="text" name="id"/></td>
            <td><input type="submit"  value="删除"/></td>

        </tr>
    </table>
</form>
</div>
</body>
</html>
