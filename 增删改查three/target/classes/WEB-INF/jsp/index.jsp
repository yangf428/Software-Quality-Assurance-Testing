<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/4/25
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菜单</title>
    <link href="1.css" rel="stylesheet" type="text/css" />
    <style>
        .main{
            background-color: rgb(188,255,255,0.5);
            width: 1200px;
            height: 600px;
            margin:100px auto;
            padding-top: 50px;
        }
        .fontt{
            font-family: '楷体';
            color: transparent;
            color: white;
            letter-spacing: 0;
            text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;
            font-size:50px;
        }
        .button {
            background: #3498db;
            width: 180px;
            padding: 4px 0;


            transform: translateX(-50%) translateY(-50%);
            border-radius: 3px;}

        p {
            font-family: 'Roboto';
            text-align: center;
            text-transform: uppercase;
            color: #FFF;
            user-select: none;
        }

        .button:hover{
            backgroud-color: #dedede;
            color: #001135;
        }
        .juzhong{
            position: absolute;
            margin-left: 42%;
            margin-top:60px;
        }
    </style>
</head>
<body style="background-image:url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556255581679&di=eb592d1a027177410619fd3a83653c30&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2Fqk%2Fback_origin_pic%2F00%2F03%2F77%2Fb610310d54b695235ca12ef6c521c953.jpg)">
<div class="main">
<h1 style="text-align: center" class="fontt">请选择操作</h1>
    <div class="juzhong">

    <div class="button"> <a href="/StudentResult/toadd"><p>插入</p></a></div><br>
    <div class="button"><a href="/StudentResult/toselect" ><p>查找</p></a></div><br>
    <div class="button"><a href="/StudentResult/todel"><p>删除</p></a></div><br>
    <div class="button"><a href="/StudentResult/list"><p>输出</p></a></div><br>
<%--<button>退出</button>--%>
    </div>
</div>

</body>
</html>
