<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%
connDB conn=new connDB();
String username=(String)session.getAttribute("MemberName");

	int MemberGrade=0;
	float MemberAmount=(float)0;
	float Rebate=(float)0;
if(username!=null && username!=""){
	String sql="select * from V_member where MemberName='"+username+"'";
	ResultSet rs=conn.executeQuery(sql);

	if(rs.next()){
	MemberGrade=rs.getInt("MemberGrade");
	MemberAmount=rs.getFloat("MemberAmount");
	Rebate=rs.getFloat("Rebate");
	}
	}
	conn.close();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- // Stylesheets // -->
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
<!--  script type="text/javascript" src="js/check.js"></script-->

<style type="text/css">
<!--
.STYLE1 {color: #999900}
.STYLE2 {color: #FF0000}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�˻�����</title>
</head>

<body>
<div id="wrapper_sec">
  <div><jsp:include page="index_navigation.jsp"/></div>


<div id="mk02"><div id="crumb">
    	<ul class="breadcrumb">
        	<li>�ҵ�λ��</li>
            <li class="last"><a href="#">�˻�����</a></li>
        </ul>
        <ul class="network">
        	<li>����:</li>
            <li><a href="http://www.haha168.com/pages/001/fool.htm"><img src="images/twitter.gif" alt="" /></a></li>
            <li><a href="http://www.haha168.com/pages/001/fool.htm"><img src="images/delicious.gif" alt="" /></a></li>
            <li><a href="http://www.haha168.com/pages/001/fool.htm"><img src="images/blogger.gif" alt="" /></a></li>
            <li><a href="http://www.haha168.com/pages/001/fool.htm"><img src="images/facebook.gif" alt="" /></a></li>
        </ul>
    </div></div>
<div><jsp:include page="index_left.jsp"/></div>
<div class="col2">
        	<h2 class="heading">�˺�����</h2>
            <div class="account">
                <ul class="acount_navi"><li><a href="account.jsp?id=2" class="selected">������Ϣ</a></li>
                    <li><a href="account.jsp?id=3">�ҵĸ�������</a></li>
                    <li><a href="account.jsp?id=5">��Ʒ��Ϣ</a></li>
                </ul>
                <div class="account_title">
                <h6 class="bold">����, <span class="STYLE2"><%=username%>��Ա</span> ����Ա�ȼ���<span class="STYLE1">VIP</span><span class="STYLE2"><%=MemberGrade%> </span>��������������<span class="STYLE2">��<%=MemberAmount%>Ԫ</span>��������Ʒ�Żݣ�<span class="STYLE2"><%=Rebate%> </span></h6>
                    <p>
                        �ڸ����ʻ�������壬����Բ鿴��������ʻ���Ŀ��ջ��߸��������ʻ���Ϣ��ѡ����������Ӳ鿴��༭��Ϣ��
                    </p>
                </div>
				<%
String s=request.getParameter("id");
if(s==null)
s="2";
int choice=Integer.parseInt(s);
switch(choice){

case 5:

%>
<jsp:include page="goods_sort.jsp"/>
<%
break;
case 6:

%>
<jsp:include page="comments.jsp"/>
<%break;
case 2:
%>
<jsp:include page="user_order.jsp"/>
<%
break;
case 3:
%>
<jsp:include page="user_modify.jsp"/>

<%
break;
case 4:
%>
<jsp:include page="user_order_detail.jsp"/>
<%
break;
}
%>
    </div>
            </div>
  </div>


<div class="clear"></div>
<!-- Footer -->
<div id="footer">
	<!-- Inner Footer Contents -->
<jsp:include page="copyright.jsp"/>	
</div>
</body>
</html>
