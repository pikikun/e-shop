<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.chStr"%>
<%@ page import="com.wgh.DB.connDB"%>
<%
String username="";
username=(String)session.getAttribute("MemberName");
if(username=="" || username==null){
	out.println("<script language='javascript'>alert('���ȵ�¼!');window.location.href='index.jsp';</script>");
}else{
	connDB conn=new connDB();
	ResultSet rs=conn.executeQuery("select * from tb_order where OrderName='"+username+"'");
	
	int orderID=0;
	int bnumber=0;
	String truename="";
	String pay="";	
	String carry="";
	float rebate=1;
	String orderDate="";
	int isEnforce=0;
	int pl_id=0;
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����</title>
</head>

<body>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
               <div class="acount_info">
                    <h6 class="heading bold">������Ϣ</h6>
                    
  </tr>
            <tr valign="top">
              <td height="134" align="center">
<table width="100%"  border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr align="center" >
                      <td width="6%" height="30" class="tableBorder_B_dashed">������</td>
                      <td width="7%" class="tableBorder_B_dashed">Ʒ����</td>
                      <td width="13%" class="tableBorder_B_dashed">��ʵ����</td>
                      <td width="11%" class="tableBorder_B_dashed">���ʽ</td>
                      <td width="12%" class="tableBorder_B_dashed">���ͷ�ʽ</td>
                      <td width="9%" class="tableBorder_B_dashed">�ۿ�</td>
                      <td width="20%" class="tableBorder_B_dashed">��������</td>
                      <td width="11%" class="tableBorder_B_dashed"></td>
                    </tr>
					<%
					while(rs.next()){
						orderID=rs.getInt("orderID");
						bnumber=rs.getInt("OrderBnumber");
						truename=rs.getString("OrderTrueName");
						pay=rs.getString("PayWay");
						carry=rs.getString("CarryWay");
						rebate=rs.getFloat("rebate");
						orderDate=rs.getString("orderDate");
						isEnforce=rs.getInt("isEnforce");
						pl_id=rs.getInt("IsComments");
					%>
                    <tr align="center">
                      <td height="24"><a href="account.jsp?id=4&&ID=<%=orderID%>"><%=orderID%></a></td>
                      <td><%=bnumber%></td>
                      <td><%=truename%></td>
                      <td><%=pay%></td>
                      <td><%=carry%></td>
                      <td><%=rebate*100%>%</td>
                      <td align="center"><%=orderDate%></td>
					  <%if(isEnforce==1 && pl_id==0){%>
                      <td align="left"><a href="account.jsp?id=6&&orderID=<%=orderID%>">ȷ���ջ�</a></td>
					  <%}else if(pl_id==1 && isEnforce==1){%>
					  <td width="4%" align="left"><a href="#">����</a></td>
					  <%}else{%>
					  <td width="7%" align="left"><a href="#">�ȴ��̼ҷ���</a></td>
					  <%}%>
                    </tr>
					<%}%>
                </table>
              </td>
            </tr>
            <tr>
              <td height="38" align="right" background="images/center02.gif"><a href="sale.jsp"><br>
                    <br>
              </a></td>
              </tr>
          </table>
</body>
</html>
<%conn.close();}%>