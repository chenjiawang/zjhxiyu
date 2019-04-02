<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*"%>
<html>
<head><title>查看员工</title></head>
<body>
<%
    out.println("<div id=\"container\" style=\"width:1500px\">");
    out.println("<div id=\"nan\" style=\"background-color:#FFD700;width:650px;float:left;\">");
    try {
        Class.forName("com.mysql.jdbc.Driver");  ////加载数据库驱动
        String url = "jdbc:MySQL://154.8.139.53:3306/zjhxiyuzhongxin?&useSSL=false&serverTimezone=UTC"; //指向数据库table1
        String username = "root";  //数据库用户名
        String password = "177cr177";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接数据库
        if(conn != null){
            out.println("<br />");
            out.println("-------------------------------");
            out.print("<br />");
            Statement stmt = null;
            ResultSet rs = null;
            String sql ="select 姓名,性质,状态,ID from 服务员 where 性别=1 order by 性质";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            out.println("男性员工:" + "<br />");
            out.println("姓名" + "\t"+"工作"+"\t"+"状态"+"\t"+"");
            out.println("<br />");
            out.println("---------------------------------------------");
            out.println("<br />");
            out.println("<br />");
            while (rs.next()) {
                out.println(rs.getString("姓名")+"   &nbsp  "+rs.getString("性质")+"   &nbsp  "+rs.getString("状态")+"   &nbsp  "); //将数据库表格查询结果输出
                String id=rs.getString("ID");
                out.println(" <img src=\"yuangongtupian/"+id+".jpg\" "+"alt=\""+id+"\" width=\"400\" height=\"400\">");
                out.print("<br />");
            }

        }
        else{
            out.print("连接失败！");
        }
    }
    catch (Exception e) {
        out.print("数据库连接异常！");
    }
    out.println("</div>");
    out.println("<div id=\"nv\" style=\"background-color:#EEEEEE;width:650px;float:left;\">");
    try {
        Class.forName("com.mysql.jdbc.Driver");  ////加载数据库驱动
        String url = "jdbc:MySQL://154.8.139.53:3306/zjhxiyuzhongxin?&useSSL=false&serverTimezone=UTC"; //指向数据库table1
        String username = "root";  //数据库用户名
        String password = "177cr177";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接数据库
        if(conn != null){
            out.println("<br />");
            out.println("-------------------------------");
            out.print("<br />");
            Statement stmt = null;
            ResultSet rs = null;
            String sql ="select 姓名,性质,状态,ID from 服务员 where 性别=0 order by 性质";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            out.println("女性员工:" + "<br />");
            out.println("姓名" + "\t"+"工作"+"\t"+"状态"+"\t"+"");
            out.println("<br />");
            out.println("---------------------------------------------");
            out.println("<br />");
            out.println("<br />");
            while (rs.next()) {
                out.println(rs.getString("姓名")+"   &nbsp  "+rs.getString("性质")+"   &nbsp  "+rs.getString("状态")+"   &nbsp  "); //将数据库表格查询结果输出
                String id=rs.getString("ID");
                out.println(" <img src=\"yuangongtupian/"+id+".jpg\" "+"alt=\""+id+"\" width=\"400\" height=\"400\">");
                out.print("<br />");
            }

        }
        else{
            out.print("连接失败！");
        }
    }
    catch (Exception e) {
        out.print("数据库连接异常！");
    }
    out.println("</div>");
    out.println("</div>");
%>
</body>
</html>