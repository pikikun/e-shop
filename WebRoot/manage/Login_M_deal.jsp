<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
String manager=chStr.chStr(request.getParameter("manager"));//�˴�������б���ת�����������������û���ʱ����������
String inputCode = request.getParameter("code");
String code = (String)session.getAttribute("rand");
try{
	ResultSet rs=conn.executeQuery("select * from tb_manager where ManagerName='"+manager+"'");
	if(rs.next()){
		String PWD=request.getParameter("PWD");
		if(PWD.equals(rs.getString("ManagerPWD"))&&(inputCode.equalsIgnoreCase(code))){
			//if(PWD.equals(rs.getString("PWD"))){
			session.setAttribute("manager",manager);
			response.sendRedirect("index.jsp");
		}else{
			out.println("<script language='javascript'>alert('������Ĺ���Ա���������֤�����!');window.location.href='Login_M.jsp';</script>");
		}
	}else{
			out.println("<script language='javascript'>alert('������Ĺ���Ա���������֤�����!');window.location.href='Login_M.jsp';</script>");
	}
}catch(Exception e){
	out.println("<script language='javascript'>alert('���Ĳ�������!');window.location.href='Login_M.jsp';</script>");
}
%>
