<%@page import="org.dai.controller.ArticleHandler"%>
<%@page import="org.dai.controller.UserHandler"%>
<%@page import="org.dai.service.ArticleService"%>
<%@page import="org.dai.mapper.ArticleMapper"%>
<%@page import="org.dai.entity.Article"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.stereotype.Controller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到跳蚤市场</title>
<%
	String path = request.getContextPath();

	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/Market.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
</head>

<body>

<header class="top">
		<%
    		boolean login = false;
    		if((String)session.getAttribute("ID")==null){
    			login=false;
    		}else{
    			login=true;
    		}
    
    	%>
    	<img id="headerLogo" style="height:200px; width:200px;"src="<%=path %>/images/computer.png" > 
    	<a  style="font-size:700%; font-family: Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑', Arial, sans-serif; position:absolute; top:87px; left:200px;">校园闲置物品交易平台</a>
    
	<div id="Login">	
	<%
		if(login){
			out.print(session.getAttribute("userName")+"&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"Logout.do\">退出登录</a>");
			
		}
	%>
	<%
		if(!login){
			out.print("<a href=\"Login.jsp\">登录</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"Register.jsp\">注册</a>");
		}
	%>
	
	</div>
	

</header>
<nav>
    <ul>
        <li class="selected"><a href="Article.do">跳蚤首页</a></li>
        <li><a href="LaunchArticle.jsp">发布商品</a></li>
        <li><a href="MyArticles.jsp">我发布的</a></li>
        <li><a href="MyLead.jsp">我租借的</a></li>
        <li><a href="MyNews.jsp">我的消息</a></li>
        <li><a href="MyInfo.jsp">修改个人信息</a></li>
    </ul>
</nav>

<div id="tableContainer">
    <div id="tableRow">
        <section id="notice">
            <h1>公告栏</h1>
            <p>
                因系统更新升级，部分功能暂时不可用，恢复时间详见本网站公告栏。</p>
            <p>
                如有问题请致电136-2233-3322☎️。</p>
            <p>
                由此给您带来的不便，敬请谅解。
                感谢广大读者的支持和配合！
            </p>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

        </section>
        <section id="main">
            <table id="table">
                <tbody>
                <%
                ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
          		ArticleService articleService = (ArticleService)ctx.getBean("articleService");
          		List<Article> listArticles = articleService.queryArticles();
                String pic="";
                int count = 0;
                for(int i = 0;i<listArticles.size();i++) {
                	
                	if(listArticles.get(i).getArticleCategory().equals("book")){
						pic = "images/book.png";
                	}
                	else if(listArticles.get(i).getArticleCategory().equals("computer")){
						pic = "images/computer.png";
                	}
                	else if(listArticles.get(i).getArticleCategory().equals("phone")){
						pic = "images/phone.png";
                	}
                	else if(listArticles.get(i).getArticleCategory().equals("camera")){
						pic = "images/camera.png";
                	}
                	else if(listArticles.get(i).getArticleCategory().equals("car")){
						pic = "images/car.png";
                	}
                	else if(listArticles.get(i).getArticleCategory().equals("box")){
						pic = "images/box.png";
                	}
        			out.print("<th><div style=\"border=	1px; \"><img style=\"width:200px;height:auto;\" src=\""+pic+"\"></div>" +
                        	"<input type=\"hidden\" value=\""+listArticles.get(i).getArticleID()+"\" name=\"articleID\"></input>" +
                        	"<a style=\"font-size:150%;\"href=\"Details.jsp?id="+listArticles.get(i).getArticleID()+"\">"+listArticles.get(i).getArticleName()+"</a></form>"); 
        			count ++;
        			System.out.println(count);
        			if(count%4==0){
        				out.print("</tr>");
        			}
        			
        		}
                %>
                </tbody>
            </table>
        </section>
    </div> <!-- tableRow -->
</div> <!-- tableContainer -->

<footer>
    &copy; 2019, Flea Market
    <br>
    All trademarks and registered trademarks appearing on
    this site are the property of their respective owners.
</footer>

</body>
</html>