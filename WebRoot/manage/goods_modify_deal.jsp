<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page import="com.wgh.dao.GoodsDaoImpl"%>
<jsp:useBean id="goods" scope="page" class="commerce.goods">
<jsp:setProperty name="goods" property="*"/>
</jsp:useBean>
<jsp:useBean id="chStr" scope="page" class="com.wgh.DB.chStr"/>
<jsp:useBean id="conn" scope="page" class="com.wgh.DB.connDB"/>

<%
Integer id=goods.getGoodsID();
ResultSet rs=conn.executeQuery("select * from tb_goods where goodsID="+id);
if (!rs.next()){
	out.println("<script language='javascript'>alert('���Ĳ�������');window.location.href='index.jsp';</script>");
}else{
	int ret=0;
        GoodsDaoImpl up_goods=new GoodsDaoImpl();
        ret=up_goods.update(goods);
	if (ret!=0){
          out.println("<script language='javascript'>alert('��Ʒ��Ϣ�޸ĳɹ���');window.location.href='index.jsp?id=1';</script>");
        }else{
          out.println("<script language='javascript'>alert('��Ʒ��Ϣ�޸�ʧ�ܣ�');window.location.href='index.jsp';</script>");
        }
}

%>
