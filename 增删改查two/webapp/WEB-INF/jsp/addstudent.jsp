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
    <style>
        .main {
            width: 1240px;
            margin-left: 40%;
            margin-top: 200px;
        }

        .button {
            background: #3498db;
            width: 180px;
            padding: 4px 0;

            transform: translateX(-50%) translateY(-50%);
            border-radius: 3px;
        }

        .sub {
            width: 100px;
            height: 35px;
            line-height: 35px;
            background: transparent url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556257482429&di=9a4a119b99d154fa04661832bff29acc&imgtype=0&src=http%3A%2F%2Fpic2.cxtuku.com%2F00%2F01%2F73%2Fb965170e468f.jpg) no-repeat;
            border: none;
            font-family: '楷体';
            color: black;
            font-size: 20px;
            font-weight: bold;
        }

        td {
            font-family: '楷体';
            color: transparent;
            color: white;
            letter-spacing: 0;
            text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;
            font-size: 30px;
        }

        .ss {
            position: absolute;
            top: 400px;
            height: 100px;
            left: 45%;
        }

        .sss {
            position: absolute;
            top: 470px;
            height: 100px;
            left: 45%;
        }
    </style>
</head>

<body style="background-image:url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556258540514&di=ae81c72b98f2a1bf63b58ff16a2c77c8&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2Fqk%2Fback_origin_pic%2F00%2F04%2F45%2F6011487d649bc9f8e0b86ac63298a2d4.jpg)">
<div class="main">
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


            <span class="ss"><input type="submit" value="确定添加" class="sub"></span>

        </form>
    </table>

    <span class="sss">
    <a href="/StudentResult/toindex">
        <input class="sub" type="submit" value="返回主页">
    </a>
    </span>
</div>
</body>
</html>
