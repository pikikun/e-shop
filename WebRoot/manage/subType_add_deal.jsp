<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page import="com.wgh.dao.SubtypeDaoImpl"%>
<jsp:useBean id="SubType" scope="page" class="commerce.SubType">
<jsp:setProperty name="SubType" property="*"/>
</jsp:useBean>
<jsp:useBean id="chStr" scope="page" class="com.wgh.DB.chStr"/>
<jsp:useBean id="conn" scope="page" class="com.wgh.DB.connDB"/>

<%
String typename=chStr.chStr(SubType.gettypename());
ResultSet rs=conn.executeQuery("select * from tb_subType where typename='"+typename+"'");
if (rs.next()){
	out.println("<script language='javascript'>alert('��С������Ϣ�Ѿ���ӣ�������µ�С������Ϣ��');window.location.href='sub_add.jsp';</script>");
}else{
	int ret=0;
        SubtypeDaoImpl ins_subType=new SubtypeDaoImpl();
        ret=ins_subType.insert(SubType);
	if (ret!=0){
          out.println("<script language='javascript'>alert('С������Ϣ��ӳɹ���');window.location.href='index.jsp?id=7';</script>");
        }else{
          out.println("<script language='javascript'>alert('С������Ϣ���ʧ�ܣ�');window.location.href='sub_add.jsp?id=8';</script>");
        }
}
%>