<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2018/12/20
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分页成功</title>
</head>
<body>
<div>
    <b>共${pageUtil.pagetotalpages}</b>条,当前第<span>${pageUtil.pageindex}</span>页
    <a href="test/page?pageIndex=1">首页</a>
    <a href="test/page?pageIndex=${pageUtil.pageindex>1?pageUtil.pageindex-1:1}" class='pre'>上一页</a>
    <c:forEach begin="1" end="${pageUtil.pagetotalcount}" var="i">
    <a href="test/page?pageIndex=${i}" style="text-decoration: none;">${i}</a>
    </c:forEach>
    <a href="test/page?pageIndex=${pageUtil.pageIndex<pageUtil.pagetotalcount?pageUtil.pageindex+1:pageUtil.pageindex}">下一页</a>
    <a href="test/page?pageIndex=${pageUtil.pagetotalcount}">末页</a> </div>

</body>
</html>
