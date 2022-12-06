<%@ page import="com.study.pojo.Brand2" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  // 查询数据库
  List<Brand2> brands = new ArrayList<Brand2>();
  brands.add(new Brand2(1,"三只松鼠","三只松鼠",100,"三只松鼠，好吃不上火",1));
  brands.add(new Brand2(2,"优衣库","优衣库",200,"优衣库，服适人生",0));
  brands.add(new Brand2(3,"小米","小米科技有限公司",1000,"为发烧而生",1));

%>


<%--
  Created by IntelliJ IDEA.
  User: ECHEAO-L
  Date: 2022/12/2
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<input type="button" value="新增"><br>
<hr>
<table border="1" cellspacing="0" width="800">
  <tr>
    <th>序号</th>
    <th>品牌名称</th>
    <th>企业名称</th>
    <th>排序</th>
    <th>品牌介绍</th>
    <th>状态</th>
    <th>操作</th>
  </tr>
  <%
    for (int i = 0; i < brands.size(); i++) {
      Brand2 brand = brands.get(i);
  %>

  <tr align="center">
    <td><%=brand.getId()%></td>
    <td><%=brand.getBrandName()%></td>
    <td><%=brand.getCompanyName()%></td>
    <td><%=brand.getOrdered()%></td>
    <td><%=brand.getDescription()%></td>
    <td><%=brand.getStatus() == 1 ? "启用":"禁用"%></td>
    <td><a href="#">修改</a> <a href="#">删除</a></td>
  </tr>

  <%
    }
  %>
</table>
</body>
</html>