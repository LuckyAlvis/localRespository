<%@page import="org.dai.service.UserService"%>
<%@page import="org.dai.service.ArticleService"%>
<%@page import="org.dai.service.BorrowService"%>
<%@page import="org.dai.controller.UserHandler"%>
<%@page import="org.dai.mapper.ArticleMapper"%>
<%@page import="org.dai.entity.User"%>
<%@page import="org.dai.entity.Borrow"%>
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
        <li><a href="Article.do">跳蚤首页</a></li>
        <li><a href="LaunchArticle.jsp">发布商品</a></li>
        <li><a href="MyArticles.jsp">我发布的</a></li>
        <li><a href="MyLead.jsp">我租借的</a></li>
        <li><a href="MyNews.jsp">我的消息</a></li>
        <li class="selected"><a href="MyInfo.jsp">修改个人信息</a></li>
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
                <thead>
                <%
                out.print("<h1>我的信息</h1>");
                

                %>
                </thead>
                <tbody>
                <%
          			if(!login){
                    	response.sendRedirect("Login.jsp");
            		}else{
                   		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
              			UserService userService = (UserService)ctx.getBean("userService");
              			User user = userService.queryUserByUserID((Integer.parseInt(session.getAttribute("ID")+"")));
              			System.out.println(user.toString());
              			
              			System.out.println(user.toString()); 
              			out.print("<tr><form action=\"UpdateUserInfo.do\" method=\"post\">" +
              					"<input type=\"hidden\" value=\""+user.getUserID()+"\" 		name=\"userID\">		</input>" +
                            	"姓名：<input type=\"text\" value=\""+user.getUserName()+"\" 		name=\"userName\">		</input>" +
                            	"密码：<input type=\"text\" value=\""+user.getUserPsd()+"\" 		name=\"userPsd\">		</input>" +
                            	"性别：<input type=\"text\" value=\""+user.getUserSex()+"\" 		name=\"userSex\">			</input>" +
                            	"电话：<input type=\"text\" value=\""+user.getUserPhone()+"\" 	name=\"userPhone\">		</input>" +
                            	"<button style=width:100px type=\"submit\">保存</button></th>" +
                            	"</form></tr>");
                        
                    	}
            		
            		
                %>
                <thead>
                <%
                out.print("<h1>历史订单：</h1>");
                

                %>
                </thead>
                <tbody>
                <%
                ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
                BorrowService borrowService = (BorrowService)ctx.getBean("borrowService");
      			List<Borrow> borrows = borrowService.queryBorrowsByUserID(Integer.parseInt(session.getAttribute("ID")+""));
      			ArticleService articleService = (ArticleService)ctx.getBean("articleService");
      			out.print("<thead>" +
  		                "<tr>" +
  		                	"<th>商品名</th>" +
  		                    "<th>时长</th>" +
  		                    "<th>所有者</th>" +
  		                    "<th>价格</th>" +
  		                 	"<th>时间</th>" +
  		                "</tr>" +
  		                "</thead>");
                for(int i = 0;i<borrows.size();i++){
  					
    				out.print("<tr><form action=\"Return.do\">" +
    						"<input type=\"hidden\" readonly=\"readonly\"	value=\""+borrows.get(i).getBorrowID()+"\" class=\"bookstore\" name=\"borrowID\">			</input>" +
    						"<th><input type=\"text\" readonly=\"readonly\"	value=\""+articleService.queryArticleByArticleID(borrows.get(i).getbArticleID()).getArticleName()+"\" class=\"bookstore\" ></input></th>" +
                        	"<th><input type=\"text\" readonly=\"readonly\"	value=\""+borrows.get(i).getbDuration()+"天\" class=\"bookstore\"></input></th>" +
                        	"<th><input type=\"text\" readonly=\"readonly\"	value=\""+borrows.get(i).getbName()+"\" class=\"bookstore\" ></input></th>" +
                        	"<th><input type=\"text\" readonly=\"readonly\"	value=\""+articleService.queryArticleByArticleID(borrows.get(i).getbArticleID()).getArticlePrice()+"元/天\" class=\"bookstore\"></input></th>" +
                        	"<th><input type=\"text\" readonly=\"readonly\"	value=\""+borrows.get(i).getbTime()+"\" class=\"bookstore\"></input></th>" +
                        	"</form>" +
                    		"</tr>"); 
    				
                    
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