<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bean.Customer" %>

<%
Customer user = (Customer)session.getAttribute("user");
%>

<%@include file="header.html" %>

<h2>マイページ</h2>

<p>ログインユーザー情報</p>
<p>ID：<%= user.getId() %></p>
<p>ログイン名：<%= user.getLogin() %></p>
<p>パスワード：<%= user.getPassword() %></p>

<br>
<a href="menu.jsp">メニューへ戻る</a>

<%@include file="footer.html" %>