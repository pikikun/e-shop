<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>

<%
connDB conn=new connDB();
chStr chStr=new chStr();
String id=request.getParameter("ID");
ResultSet rs=conn.executeQuery("select * from V_order_detail where orderID="+id);
rs.next();
String goodsname=rs.getString("GoodsName");
float price=rs.getFloat("price");
int number=rs.getInt("number");
String picture=rs.getString("GoodsPicture");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<h4 class="heading">��������</h4>
<table width="98%" height="163"  border="0" cellpadding="0" cellspacing="0" class="noborder">
                    <tr>
                      <td width="37%" height="95" rowspan="4" align="center"><img src="images/<%=picture%>" width="154" height="129"></td>
                      <td width="63%">�������ţ�<%=id%></td>
                    </tr>
                    <tr>
                      <td height="41">��Ʒ������<%=goodsname%></td>
                    </tr>
                    <tr>
                      <td height="45">��Ʒ�۸�<%=price%></td>
                    </tr>
                    <tr>
                      <td>��Ʒ����:<%=number%></td>
                    </tr>
</table>
<%conn.close();%>
</body>
</html>
