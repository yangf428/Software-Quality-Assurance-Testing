<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/11/23
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
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
    <form action="/StudentResult/login" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="登陆"></td>
            </tr>
        </table>
    </form>
    <a href="/StudentResult/toadd"><button>注册</button></a>
</div>
</body>
</html>
