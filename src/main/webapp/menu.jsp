<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bean.Customer" %>
<%
Customer user = (Customer)session.getAttribute("user");
%>
<%@include file="header.html" %>

    <h2>メニュー画面</h2>
    <p>ようこそ、<%= user.getLogin() %> さん</p>

    <p><a href="mypage.jsp">マイページへ</a></p>
    <p><a href="list.jsp">商品一覧ページへ</a></p>
    
<%@include file="footer.html" %>