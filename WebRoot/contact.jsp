<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- // Stylesheets // -->
<link href="css/mk.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
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
            <li><a href="#"><img src="images/twitter.gif" alt="" /></a></li>
            <li><a href="#"><img src="images/delicious.gif" alt="" /></a></li>
            <li><a href="#"><img src="images/blogger.gif" alt="" /></a></li>
            <li><a href="#"><img src="images/facebook.gif" alt="" /></a></li>
        </ul>
    </div></div>
<div><jsp:include page="index_left.jsp"/></div>
<div class="col2">
<div class="contact"> 
            	<h3 class="heading">��ϵ����</h3> 
                <div class="mapsec"> 
                	<h6>���ǽ���</h6> 
                    <p> 
                    	CCL�����̳ǳ�����2010��8��30��8��30��30�� �Գ������� ����˾�Է���˿�Ϊ�� ��ù��˿͵�֧�� ����2011��3��20���ٻ���Ҵ�ҵ��˾50ǿ ������</p> 
                    <div class="clear"></div> 
                    <br /> 
                    <p> 
                    	<span class="bold">�绰��</span> 123-040-536<br /> 
                        <span class="bold">��ַ��</span> 123-040-536<br /> 
                        <span class="bold">���䣺</span> info@website.com<br /> 
                    </p> 
                    <div class="map"> 
                        <img src="images/goods/sj1.jpg" alt="" width="154" height="129"/>
                    	<div class="clear"></div> 
                  </div> 
                </div> 
                <div class="contact_form"> 
                	<h6>��ϵ����</h6> 
                    <form method="post"  id="contactform"> 
                    <ul> 
                    	<li> 
                        	<input type="text" value="����" onblur="if(this.value == '') { this.value = '����'; }" onfocus="if(this.value == '����') { this.value = ''; }" name="contactname" id="contactname" class="bar required" /> 
                        </li> 
                        <li>    
                            <input type="text" value="�����ַ" onblur="if(this.value == '') { this.value = '�����ַ'; }" onfocus="if(this.value == '�����ַ') { this.value = ''; }" name="email" id="emailvox" class="bar required email" /> 
                        </li> 
                        <li> 
                            <input type="text" value="����" onblur="if(this.value == '') { this.value = '����'; }" onfocus="if(this.value == '����') { this.value = ''; }" name="subject" class="required bar" /> 
                        </li> 
                        <li> 
                            <textarea id="message" name="����"  class="required"></textarea> 
                        </li> 
                        <li> 
                        <button type="submit" class="submit" >�ύ</button>
                        </li> 
                    </ul> 
                    </form> 
                </div> 
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
