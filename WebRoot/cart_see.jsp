<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Vector"%>
<%@ page import="commerce.goodselement"%>
<%@ page import="com.wgh.DB.chStr"%>
<%@ page import="com.wgh.DB.connDB"%>
<%
String username="";
username=(String)session.getAttribute("MemberName");
if(username=="" || username==null){
	out.println("<script language='javascript'>alert('���ȵ�¼!');window.location.href='index.jsp';</script>");
}else{
	chStr chStr=new chStr();
	connDB conn=new connDB();
	Vector cart=(Vector)session.getAttribute("cart");
	if(cart==null || cart.size()==0){
		response.sendRedirect("cart_null.jsp");
	}else{
	%>
<html>
<head>
<title>�鿴���ﳵ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<table width="790"  border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
 <td class="tableBorder">
<jsp:include page="index_navigation.jsp"/>
<table width="790" height="236"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="182" height="182" valign="top">
	<jsp:include page="index_left.jsp"/>
	</td>
    <td valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="33" background="images/shop_12.gif"></td>
        <td width="505" height="33" align="right" valign="middle" background="images/shop_12.gif"><table width="100%" height="24"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="8"></td>
          </tr>
          <tr>
            <td align="right" class="word_green"><marquee direction="left" scrollamount="1" scrolldelay="1" onMouseOver="this.stop();" onMouseOut="this.start();">^_^ �˿����ã�������Ʒ���ȵ�¼ <a href="register.jsp" class="word_green">[���û�ע��]</a></marquee></td>
          </tr>
        </table></td>
        <td width="10" background="images/shop_12.gif">&nbsp;</td>
      </tr>
      <tr>
        <td width="93" height="50" background="images/shop_15.gif">&nbsp;</td>
        <td colspan="2" background="images/shop_16.gif">
		       <jsp:include page="search.jsp"/>
		</td>
      </tr>
    </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="189" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="80" background="images/center_cart.gif">&nbsp;</td>
              </tr>
            <tr valign="top">
              <td height="134" align="center">
<table width="100%" height="126"  border="0" cellpadding="0" cellspacing="0">

			    <tr>
                  <td valign="top">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td>
<form method="post" action="cart_modify.jsp" name="form1">
<table width="92%" height="48" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr align="center" valign="middle">
        <td height="27" class="tableBorder_B1">���</td>
        <td height="27" class="tableBorder_B1">��Ʒ���</td>
        <td class="tableBorder_B1">��Ʒ����</td>
        <td height="27" class="tableBorder_B1">����</td>
        <td height="27" class="tableBorder_B1">����</td>
        <td height="27" class="tableBorder_B1">���</td>
        <td class="tableBorder_B1">�˻�</td>
      </tr> 
	<%
		float sum=0;
		int ID=-1;
		String goodsname="";
		for(int i=0;i<cart.size();i++){
			goodselement goodsitem=(goodselement)cart.elementAt(i);
			sum=sum+goodsitem.number*goodsitem.Nowprice;
			ID=goodsitem.GoodsID;
			if (ID>0){
				ResultSet rs_goods=conn.executeQuery("select * from tb_goods where GoodsID="+ID);
				if (rs_goods.next()){
					goodsname=rs_goods.getString("goodsname");
				}
			}
	%> 
      <tr align="center" valign="middle"> 
        <td width="32" height="27"><%=i+1%></td>
        <td width="109" height="27"><%=ID%></td> 
        <td width="199" height="27"><%=goodsname%></td>
        <td width="59" height="27">��<%=goodsitem.Nowprice%></td> 
        <td width="51" height="27">
          <input name="num<%=i%>" size="7" type="text" class="txt_grey" value="<%=goodsitem.number%>" onBlur="check(this.form)"></td> 
        <td width="65" height="27">��<%=(goodsitem.Nowprice*goodsitem.number)%></td> 
        <td width="34"><a href="cart_move.jsp?ID=<%=i%>"><img src="images/del.gif" width="16" height="16"></a></td>
        <script language="javascript">
			<!--
			function check(myform){
				if(isNaN(myform.num<%=i%>.value) || myform.num<%=i%>.value.indexOf('.',0)!=-1){
					alert("�벻Ҫ����Ƿ��ַ�");myform.num<%=i%>.focus();return;}
				if(myform.num<%=i%>.value==""){
					alert("�������޸ĵ�����");myform.num<%=i%>.focus();return;}	
				myform.submit();
			}
			-->
		</script>
	<%
		}

	%> </tr>
      </table>
	  </form>
<table width="100%" height="52" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr align="center" valign="middle">
		<td height="10">&nbsp;		</td>
        <td width="24%" height="10" colspan="-3" align="left">&nbsp;</td>
		</tr>
      <tr align="center" valign="middle">
        <td height="21" class="tableBorder_B1">&nbsp;</td>
        <td height="21" colspan="-3" align="left" class="tableBorder_B1">�ϼ��ܽ���<%=sum%></td>
      </tr>
      <tr align="center" valign="middle">
        <td height="21" colspan="2"> <a href="index.jsp">��������</a> | <a href="cart_checkout.jsp">ȥ����̨����</a> | <a href="cart_clear.jsp">��չ��ﳵ</a> | <a href="#">�޸�����</a></td>
        </tr>
</table>
						</td>
                      </tr>
                    </table></td>
			     </tr>
              </table>
                 </td>
            </tr>
            <tr>
              <td height="38" align="right" background="images/center02.gif"><a href="sale.jsp"><br>
                    <br>
              </a></td>
              </tr>
          </table></td>
          </tr>
      </table></td>
  </tr>
</table>
<table width="790"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="78"  border="0" align="center" cellpadding="-2" cellspacing="-2">
      <tr>
        <td height="13" colspan="5"><div align="center">
          <hr width="100%" size="1">
          </div></td>
        </tr>
      <tr>
        <td width="124" height="13">&nbsp;</td>
        <td height="13" colspan="3" align="center">E-shop�����̳ǿͻ��������ߣ�0431-4978981��4978982 ���棺0431-4972266</td>
        <td width="141">&nbsp;</td>
      </tr>
      <tr>
        <td height="15" colspan="2">&nbsp;</td>
        <td width="464" valign="bottom" align="center"> CopyRight &copy; 2005 www.mingrisoft.com ����ʡ���տƼ����޹�˾</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td align="center">��վ��ʹ��IE6.0�����ϰ汾 1024*768Ϊ�����ʾЧ��</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr bgcolor="#cccccc">
        <td height="8" colspan="2"></td>
        <td height="8" align="center"></td>
        <td height="8" colspan="2"></td>
      </tr>
    </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
<%conn.close();}
}%>
