<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bean.Customer" %>

<%
Customer user = (Customer)session.getAttribute("user");
%>

<%@include file="header.html" %>

<h2>商品一覧</h2>

<p>ログインユーザー：<%= user.getLogin() %></p>

<table border="1">

<tr>
<th>ID</th>
<th>商品名</th>
<th>価格</th>
</tr>

<tr>
<td>1</td>
<td>まぐろ</td>
<td>100</td>
</tr>

<tr>
<td>2</td>
<td>サーモン</td>
<td>100</td>
</tr>

<tr>
<td>3</td>
<td>えび</td>
<td>100</td>
</tr>

<tr>
<td>4</td>
<td>いか</td>
<td>100</td>
</tr>

</table>

<br>

<a href="menu.jsp">メニューへ戻る</a>

<%@include file="footer.html" %>