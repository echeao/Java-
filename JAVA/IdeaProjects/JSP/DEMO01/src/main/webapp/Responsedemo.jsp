<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page contentType="image/png" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <%
      BufferedImage image = new BufferedImage(340,160,BufferedImage.TYPE_INT_BGR);//创建BufferedImage对象
      Graphics g = image.getGraphics();
      g.fillRect(0,0,400,400);
      g.setColor(new Color(255,0,0));
      g.fillArc(20,20,100,100,30,120);
      g.setColor(new Color(0,255,0));
      g.fillArc(20,20,100,100,150,120);
      g.setColor(new Color(0,0,255));
      g.fillArc(20,20,100,100,270,120);
      g.setColor(new Color(0,0,0));
      g.setFont(new Font("Arial Black",Font.PLAIN,16));
      g.drawString("Hello JSP",200,60);
      g.dispose();
      ImageIO.write(image,"png",response.getOutputStream());
    %>
  </body>
</html>