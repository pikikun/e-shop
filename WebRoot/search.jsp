<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
ResultSet rs_type=conn.executeQuery("select ID,supertype from V_Type group by ID,supertype order by supertype");
int id=-1;
String typename="";
%>
<form name="form2" method="post" action="search_deal.jsp">
<table width="24%" height="23"  border="0" cellpadding="0" cellspacing="0">
<tr>
  <td height="7"></td>
  </tr>
<tr>
  <td><p>�������ѯ����
      <select name="type" class="textarea">
      <option value="0" selected>ȫ������</option>
      <%
	  while(rs_type.next()){
		  id=rs_type.getInt(1);
		  typename=rs_type.getString(2);%>
      <option value="<%=id%>"><%=typename%></option>
          <%}%>
      </select>
  </p>
    <p>    
      <input name="key" type="text" class="txt_grey" size="26">
    </p>
    <p>
       �������������������� 
         <input name="search" type="submit" class="btn_grey" value="����" />    
        </p></td>
  </tr>
</table>
</form>
