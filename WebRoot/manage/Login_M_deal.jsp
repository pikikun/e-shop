<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
String manager=chStr.chStr(request.getParameter("manager"));//此处必须进行编码转换，否则输入中文用户名时将出现乱码
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
			out.println("<script language='javascript'>alert('您输入的管理员或密码或验证码错误!');window.location.href='Login_M.jsp';</script>");
		}
	}else{
			out.println("<script language='javascript'>alert('您输入的管理员或密码或验证码错误!');window.location.href='Login_M.jsp';</script>");
	}
}catch(Exception e){
	out.println("<script language='javascript'>alert('您的操作有误!');window.location.href='Login_M.jsp';</script>");
}
%>
