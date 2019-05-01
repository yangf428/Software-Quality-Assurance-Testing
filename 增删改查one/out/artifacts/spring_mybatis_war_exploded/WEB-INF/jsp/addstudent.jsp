<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/11/24
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加</title>
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
        <form method="post" action="/StudentResult/addStudent">
            <tr><td>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username"></td></tr>
            <tr><td>&nbsp;&nbsp;</td></tr>
            <tr><td>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="password"></td></tr>
            <tr><td>&nbsp;&nbsp;</td></tr>
            <tr><td>是否注册为VIP贵宾 :
                <select name="isVIP">
                <option value="1">是</option>
                <option value="0">否</option>
                </select>
            </td></tr>
                 <tr><td>&nbsp;&nbsp;</td></tr>
            <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="确定添加"></td></tr>
        </form>
    </table>
</div>
</body>
</html>
