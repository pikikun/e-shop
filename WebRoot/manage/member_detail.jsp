<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
if (request.getParameter("ID")!=null){
	int ID=Integer.parseInt(request.getParameter("ID"));
	ResultSet rs=conn.executeQuery("select * from tb_member where MemberID="+ID);
	String username="";
	String Truename="";
	String city="";
	String address="";
	String postcode="";
	String CardNO="";
	String CardType="";	  
	float Amount=0;
	String Tel="";
	String Email=""; 
	if(!rs.next()){
		out.println("<script lanuage='javascript'>alert('���Ĳ�������!');window.location.href='membermanage.jsp';</script>");
	}else{
		username=rs.getString("MemberName");
		Truename=rs.getString("MemberTrueName");
		city=rs.getString("MemberCity");
		address=rs.getString("MemberAddress");
		postcode=rs.getString("MemberPostcode");
		CardNO=rs.getString("MemberCardNO");
		CardType=rs.getString("MemberCardType");	  
		Amount=rs.getFloat("MemberAmount");
		Tel=rs.getString("MemberTel");	
		Email=rs.getString("MemberEmail");	 
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̨����</title>
<link href="../css/styleadd.css" rel="stylesheet">
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<script src="onclock.JS"></script>
<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
</head>


<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
	float: left;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgS.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
#all div left {
	float: left;
	width: 200px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	position: relative;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
}
</style>
<body><%
if(session.getAttribute("manager")==null){
out.print("<script>alert('���ȵ�¼��');document.location='Login_M.jsp';</script>");
}%>
<div id="all">
  <div><table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="1%" height="64">&nbsp;</td>
    <td width="99%" valign="top"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td width="74%" height="38" class="admin_txt"><img src="images/thaw.gif" width="15" height="15" />����Ա
		<%=session.getAttribute("manager")%>�� ����,��л��½ʹ�ã���<img src="images/back.gif" width="16" height="16" /><a href="logout.jsp">�˳�</a></td>
        <td width="22%"><a href="#" target="_self" onClick="logout();"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table></div>

  <div><img src="images/top2.jpg" /></div>
  <div id="container"><jsp:include page="index_left.jsp" />
  </div>
  <div id="container2">
<table width="800" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="932" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">��Ա����</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
	<p><img src="images/hyxq.jpg" /></p><table width="92%" height="192"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">
<table width="100%" height="14"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="13" align="center">&nbsp;</td>
            </tr>
          </table>
             <table width="750"  border="0" align="center" cellpadding="0" cellspacing="0" class="tableBorder_dashed">
                  <tr>
                    <td width="20%" height="27" align="right" class="tableBorder_B_dashed"> �������� �� &nbsp;�� �� ���� ���� </td>
                    <td height="13" align="left" class="tableBorder_B_dashed"> &nbsp;<%=username%>                    </td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">����������&nbsp;��ʵ������</td>
                    <td height="14" align="left" class="tableBorder_B_dashed">&nbsp;<%=Truename%></td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;��������������&nbsp;&nbsp;&nbsp;&nbsp;�У�</td>
                    <td align="left" class="tableBorder_B_dashed">&nbsp;<%=city%>
                    </td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;������&nbsp;&nbsp;&nbsp;&nbsp;ַ��</td>
                    <td height="14" align="left" class="tableBorder_B_dashed">&nbsp;<%=address%></td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;���������룺</td>
                    <td width="80%" height="27" align="left" class="tableBorder_B_dashed">&nbsp;<%=postcode%>
                    </td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;��֤�����ͣ�</td>
                    <td height="14" align="left" class="tableBorder_B_dashed">&nbsp;<%=CardType%> </td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;��֤�����룺</td>
                    <td align="left" class="tableBorder_B_dashed">&nbsp;<%=CardNO%>
                    </td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;�� ��&nbsp;&nbsp;&nbsp; &nbsp;����</td>
                    <td align="left" class="tableBorder_B_dashed">&nbsp;<%=Tel%></td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp; Email��</td>
                    <td align="left" class="tableBorder_B_dashed">&nbsp;<%=Email%></td>
                  </tr>
                  <tr>
                    <td height="27" align="right" class="tableBorder_B_dashed">&nbsp;�� �� �</td>
                    <td align="left" class="tableBorder_B_dashed">&nbsp;<%=Amount%> (Ԫ)</td>
                  </tr>
                  <tr>
                    <td height="38" colspan="2" align="center">

                        <input name="Submit3" type="button" class="btn_grey" value="����" onClick="JScript:history.back()">                    </td>
                  </tr>
                </table>		  </td>
        </tr>
      </table>
	</td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
  </div>

</div>
</body>
</html>
<%
}else{
	out.println("<script lanuage='javascript'>alert('���Ĳ�������!');window.location.href='index.jsp';</script>");
}%>