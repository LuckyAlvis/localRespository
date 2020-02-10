<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.dai.service.ArticleService"%>
<%@page import="org.dai.mapper.ArticleMapper"%>
<%@page import="org.dai.entity.Article"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>发布商品</title>
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
        <li><a href="Article.do">跳蚤首页</a></li>
        <li class="selected"><a href="LaunchArticle.jsp">发布商品</a></li>
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
			 <%
                out.print("<h1>发布商品：</h1>");
                

            %>
            <form action="Launch.do">
                物品名称：<input type="text" style="width:600px;" placeholder="物品名称" name="articleName"></input>
                <br><br>
                物品分类：<select style="width:600px;" name="articleCategory">
                            <option value="car">汽车</option>
                            <option value="book">书籍</option>
                            <option value="camera">相机</option>
                            <option value="computer">电脑</option>
                            <option value="phone">手机</option>
                            <option value="other">其他</option>
                        </select>
                <br><br>
                <%
               		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
          			ArticleService articleService = (ArticleService)ctx.getBean("articleService");
          			int MaxID = articleService.MaxID();
                
                %>
                <input type="hidden" name="articleOwnerID" value="<%=session.getAttribute("ID") %>">
                <input type="hidden" name="articleOwner" value="<%=session.getAttribute("userName") %>">
                <input type="hidden" name="articleID" value="<%=MaxID+1 %>">
                <% MaxID = MaxID+1; %>
                物品描述：<input type="text" style="width:600px;height:200px;"  placeholder="物品描述" name="articleDescription"></input>
                <br><br>
                租借价格：<input type="text" style="width:600px;" placeholder="租借价格（人民币/天）" name="articlePrice"></input>
				
                <br>
                <br>
                <button style="width:70px;" class="but" type="submit">发布</button>
                <button style="width:70px;" class="but" type="reset">重置</button>
                <br>
            </form>
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
