<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page import="com.wgh.DB.connDB"%>

<%
connDB conn=new connDB();
String ID[]=request.getParameterValues("delid");
String bbsID="";
if (ID.length>0){
	for(int i=0;i<ID.length;i++){
		bbsID=bbsID+ID[i]+",";
	}
	bbsID=bbsID.substring(0,bbsID.length()-1);
	int ret=-1;
	String sql="Delete From tb_BBS Where ID in("+bbsID+")";
	ret=conn.executeUpdate(sql);
	if(ret==0){
		out.println("<script lanuage='javascript'>alert('������Ϣɾ��ʧ��!');window.location.href='index.jsp?id=4';</script>");
	}else{
		out.println("<script lanuage='javascript'>alert('������Ϣɾ���ɹ�!');window.location.href='index.jsp?id=4';</script>");
	}
}else{
	out.println("<script lanuage='javascript'>alert('���Ĳ�������!');window.location.href='placardmanage.jsp';</script>");
}
%>
