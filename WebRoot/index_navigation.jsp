<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="Home.css" />
<link href="css/mk.css" rel="stylesheet" type="text/css" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:213px;
	height:76px;
	z-index:21;
	top: -23px;
	visibility: visible;
	left: 742px;
}
-->
</style>
</head>
<body>
<table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <%
  String goodsName="null";
 String username=(String)session.getAttribute("MemberName");
 if(username==null || username==""){
  %>
    <td width="43" height="24"><a href="login_user.html">��¼|</a></td>
	  <td width="35"><a href="register.jsp">ע��|</a></td>
    <td width="185"><a href="cart_see.jsp">���ҵĹ��ﳵ|</a></td>
    <td width="115"><marquee scrollamount="2">�οͣ���ӭ�����������ȵ�¼��</marquee></td>
	<%
	}
	else
	{
	%>
	<td width="32" height="24"><a href="logout.jsp">�˳�|</a></td>
    <td width="144"><a href="cart_see.jsp">�ҵĹ��ﳵ|</a></td>
    <td width="277"><marquee scrollamount="2"><%=username%>����ӭ����ף�㹺����죡
    </marquee></td>
	<%
	}
	%>
    <td width="55" align="right"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&touid=%E9%99%88%E8%8A%9D%E5%A6%AE&siteid=cntaobao&status=2&charset=utf-8"><img border="0" src="http://amos.alicdn.com/online.aw?v=2&uid=%E9%99%88%E8%8A%9D%E5%A6%AE&site=cntaobao&s=2&charset=utf-8" alt="��������ҷ���Ϣ" /></a>Ϭ����</td>
    <td width="54" align="right"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=862164018&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:862164018:45 &r=0.4317254757042974" alt="���������ҷ���Ϣ" title="���������ҷ���Ϣ"></a>
����</td>
  </tr>
</table>
 <div id="logo">
   <div align="left">
     <p>&nbsp;</p>
     <p><a href="index.jsp"><img src="images/top1.jpg" width="254" height="38" border="0" /></a> </p>
   </div>
   <div class="right_head"></div>
 </div>
<div id="mk01">
  <div id="header">
  <div class="banner">
    <div class="tabbar">
      <div class="tabs">
        <div class="float_icon">��</div>
        <p><a href="index.jsp" title="�� ҳ" class="actived" style="margin-left:0;padding-left:0;"> ��ҳ</a> 
        <a href="index.jsp?id=2" title="��������">ȫ����Ʒ</a> 
        <a href="index.jsp?id=3" title="���ϼ�">���ϼ�</a> 
        <a href="index.jsp?id=4" title="�ؼ���Ʒ">�ؼ���Ʒ</a> 
        <a href="account.jsp" title="�˻�����">�˻�����</a> 
        <a href="index.jsp?id=7&amp;&amp;goodsName=<%=goodsName%>" title="������">��������</a> 
        </p>
        <p><a href="contact.jsp" title="��ϵ����">��ϵ����</a> </p>
      </div>
	  
      <div class="bg">
        <div class="nw"></div>
        <div class="cen"></div>
        <div class="cen"></div>
        <div class="cen"></div>
        <div class="cen"></div>
        <div class="cen"></div>
        <div class="ne"></div>
      </div>
    </div>
  </div>
  <p>&nbsp;</p>
  <div class="bar"></div>
  <div id="Layer1">
          <div id="header_right">
            <ul id="language">
                <li><a></a></li>
                <li><a></a></li>
                <li><a></a></li>
                
            </ul>
            <div class="cleaner"></div>
            <div id="templatemo_search">
                <form action="index.jsp?id=5" method="post">
                  <input type="text" value="����Ҫ��ѯ����Ʒ����"   name="cx" id="cx" title="keyword" onblur="if(this.value == '') { this.value = '����Ҫ��ѯ����Ʒ����'; }" onfocus="if(this.value == '����Ҫ��ѯ����Ʒ����') { this.value = ''; }" class="txt_field" />
                  <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
              </form>
            </div>
    </div></div>
</div>  	 
</div>   
</body>
</html>
