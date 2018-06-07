<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- // Stylesheets // -->

<head>
<link href="css/mk.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/default.advanced.css" />
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.1.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.ad-gallery.css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider-styles.css" />
<link rel="stylesheet" type="text/css" href="Home.css" />

<!-- // Javascript // -->
<script type="text/javascript" src="js/jquery.min132.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.1.js"></script>
<script type="text/javascript" src="js/contentslider.js"></script>
<script type="text/javascript" src="js/ddaccordion.js"></script>
<script type="text/javascript" src="js/acordn.js"></script>
<script type="text/javascript" src="js/jquery.min14.js"></script>
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/thumbgallery.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-1.3.1.js"></script>
<script type="text/javascript" src="js/coin-slider.js"></script>

<script type="text/javascript" src="js/jcarousellite_1.0.1.js"></script>
<script type="text/javascript" src="js/scroll.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>E-shop购物商城</title>
</head>

<body>
<div id="wrapper_sec">
  <div><jsp:include page="index_navigation.jsp"/></div>


<div id="crumb">
    	<ul class="breadcrumb">
        	<li>我的位置</li>
            <li class="last"><a href="index.jsp">首页</a></li>
			
        </ul>
        <ul class="network">
        	<li>分享:</li>
            <li><a href="http://www.haha168.com/pages/001/fool.htm"><img src="images/twitter.gif" alt="" /></a></li>
            <li><a href="http://www.haha163.com/pages/001/fool.htm"><img src="images/delicious.gif" alt="" /></a></li>
            <li><a href="http://www.haha163.com/pages/001/fool.htm"><img src="images/blogger.gif" alt="" /></a></li>
            <li><a href="http://www.haha163.com/pages/001/fool.htm"><img src="images/facebook.gif" alt="" /></a></li>
        </ul>
    </div>
	
<div><jsp:include page="index_left.jsp"/></div>
<div class="col2"><jsp:include page="index_right.jsp"/></div>
<%
  
String s=request.getParameter("id");
if(s==null)
s="1";
int choice=Integer.parseInt(s);
switch(choice){
case 1:
%>
<div class="col2"><jsp:include page="goods_sort.jsp"/></div>
 <%
break;
case 2:
%>
<div class="col2"><jsp:include page="goods_all.jsp"/></div>
<%
break;
case 3:
%>
<div class="col2"><jsp:include page="goods_new.jsp"/></div>
<%
break;
case 4:
%>
<div class="col2"><jsp:include page="goods_sale.jsp"/></div>
<%
break;
case 5:
%>
<div class="col2"><jsp:include page="search_head_deal.jsp"/></div>
<%
break;
case 6:
%>
<div class="col2"><jsp:include page="search_deal.jsp"/></div>
<%
break;
case 7:
%>
<div class="col2"><jsp:include page="comments_view.jsp"/></div>
<%
break;
case 8:
%>
<div class="col2"><jsp:include page="placard_see.jsp"/></div>
 <%
break;
}
%>
</div>
<div class="clear"></div>
<!-- Footer -->
<div id="footer">
	<!-- Inner Footer Contents -->
<jsp:include page="copyright.jsp"/>	
</div>
</body>
</html>
