<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.html" %>

    <h2>ログイン画面</h2>

    <form action="login" method="post">
        ユーザー名：<input type="text" name="login"><br>
        パスワード：<input type="text" name="password"><br>
        <input type="submit" value="ログイン">
    </form>
<%@include file="footer.html" %>