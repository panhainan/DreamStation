<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="editor/editor_config.js"></script>
    <script type="text/javascript" src="editor/editor_all.js"></script>
    <title>团队文化管理</title>
	<link rel="stylesheet" type="text/css" href="css/back_manage.css">
	<link rel="shortcut icon" href="image/news_title_pic.png">
<style type="text/css">
  body,html{
            width: 1004px;
		padding: 0px;
		margin: 0px auto; /*设置居中  */
		text-align: center; /*兼容性更好  */
        }

</style>

  </head>
  
  <body>
  <div class="body">
		<div class="top">
		<img alt="" src="image/manager_top.jpg"/>
		</div>
		<div class="left">
		<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div class="right">
		<center><h1>团队文化更新</h1></center>
		
		<form action="update_culture.action" method="post">
		<center>
		<s:hidden name="culture.id" rows="1" cols="10" value="%{culture.id}"></s:hidden>
	 标题：  <s:textarea name="culture.title"  rows="1" cols="30"  value="%{culture.title}"></s:textarea><p>
 <s:textarea name="culture.content" id="textarea" rows="20" cols="80"  value="%{culture.content}"></s:textarea><p>
   <input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" value="重置" />
        </center>
         <script type="text/javascript">
    	UE.getEditor("textarea");
    </script>
        </form>
            </div>
		
		
		
		
		</div>


  </body>
</html>
