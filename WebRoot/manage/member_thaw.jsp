<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>

<%
connDB conn=new connDB();
chStr chStr=new chStr();
%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body>
<%
if(request.getParameter("ID")!=""){

	int ID=Integer.parseInt(request.getParameter("ID"));
	String sql="update tb_member set MemberFreeze=0 where MemberID="+ID;
	
	int ret=0;
	ret=conn.executeUpdate(sql);
	if (ret!=0){
		out.println("<script language='javascript'>alert('�û�Ա��Ϣ�Ѿ����ɹ��ⶳ��');window.location.href='index.jsp?id=2';</script>");
		}else{
		out.println("<script language='javascript'>alert('����ʧ�ܣ�');window.location.href='index.jsp?id=2';</script>");
	}
}
%>
</body>
</html>
