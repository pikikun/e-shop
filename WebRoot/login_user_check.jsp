<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="java.sql.*" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
String MemberName=chStr.chStr(request.getParameter("MemberName"));
try{
ResultSet rs=conn.executeQuery("select * from tb_member where MemberName='"+MemberName+"' and MemberFreeze=0");
 if(rs.next()){
 String PWD=request.getParameter("MemberPWD");
 if(PWD.equals(rs.getString("MemberPWD"))){
 session.setAttribute("MemberName",MemberName);
 response.sendRedirect("index.jsp");
 }else{
 out.println("<script language='javascript'>alert('��������û��������������������Գ��ϵ��');window.location.href='index.jsp';</script>");
 }}
 else{
 out.println("<script language='javascript'>alert('��������û�����������󣬻������ʻ��ѱ����ᣬ��������Գ��ϵ��');window.location.href='index.jsp';</script>");
 }}catch(Exception e){
 out.println("<script language='javascript'>alert('���Ĳ�������');window.location.href='index.jsp';</script>");
 }
 conn.close();
%>
