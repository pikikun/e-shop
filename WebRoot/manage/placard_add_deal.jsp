<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page import="com.wgh.dao.PlacardDaoImpl"%>
<jsp:useBean id="placard" scope="page" class="commerce.placard">
<jsp:setProperty name="placard" property="*"/>
</jsp:useBean>
<jsp:useBean id="chStr" scope="page" class="com.wgh.DB.chStr"/>
<jsp:useBean id="conn" scope="page" class="com.wgh.DB.connDB"/>

<%
String title=chStr.chStr(placard.getBBSTitle());
ResultSet rs=conn.executeQuery("select * from tb_bbs where BBSTitle='"+title+"'");
if (rs.next()){
	out.println("<script language='javascript'>alert('�ù�����Ϣ�Ѿ���ӣ�������µĹ�����Ϣ��');window.location.href='placard_add.jsp';</script>");
}else{
	int ret=0;
        PlacardDaoImpl ins_placard=new PlacardDaoImpl();
        ret=ins_placard.insert(placard);
	if (ret!=0){
          out.println("<script language='javascript'>alert('������ӳɹ���');window.location.href='index.jsp?id=4';</script>");
        }else{
          out.println("<script language='javascript'>alert('�������ʧ�ܣ�');window.location.href='index.jsp?id=12';</script>");
        }
}
%>