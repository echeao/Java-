<%@ page import="java.sql.SQLOutput" %><%--
  Created by IntelliJ IDEA.
  User: ECHEAO-L
  Date: 2022/12/2
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>HELLO JSP</h1>
<%
    out.println("暗黙オブジェクトoutの使用例です。");
    out.println("<BR>");

    //(1)forループ内で変数xを1ずつ増加させ、その結果を
    //   printlnメソッドで表示しています。
    for (int x = 1; x <= 10; x++) {
        out.println(x);
        out.println("<BR>");
    }
%>
<h1>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</h1>
<%
    out.println("暗黙オブジェクトrequestの使用例です。");
    out.println("<BR><BR>");
    //(1)パラメータ値のエンコード方式を指定します。
    //   パラメータ値を取得する前に指定します。
    request.setCharacterEncoding("windows-31j");

    out.println("1.getParameterメソッドの使用例です。");
    out.println("<BR>");
    //(2)パラメータ名（name）を指定し、パラメータ値
    //   を取得します。
    out.println(request.getParameter("name"));
    out.println("<BR><BR>");

    out.println("2.getParameterValuesメソッドの使用例です。");
    out.println("<BR>");
    //(3)複数の値を持つパラメータ名（hobby）を指定し、
    //   パラメータ値を取得します。
//    String[] strAry = request.getParameterValues("hobby");
//    for (int i = 0; i < strAry.length; i++) {
//        out.print(strAry[i]);
    }
%>
<h1>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</h1>


</body>
</html>
