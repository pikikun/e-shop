<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.wgh.DB.connDB"%>
<%@ page import="com.wgh.DB.chStr"%>
<%
connDB conn=new connDB();
chStr chStr=new chStr();
ResultSet rs_super=conn.executeQuery("select ID,superType from V_type group by ID,superType");
int superID=-1;
String superName="";
if(rs_super.next()){
	superID=rs_super.getInt(1);
}else{
	out.println("<script language='javascript'>alert('����¼�������Ϣ!');window.location.href='index.jsp';</script>");
	return;
}

int P_superID=-1;
ResultSet rs_sub=null;
//��ѯ����С���Ĭ��ѡ��
if(request.getParameter("superID")=="" || request.getParameter("superID")==null){
	P_superID=superID;
}else{
	P_superID=Integer.parseInt(request.getParameter("superID"));
}
rs_sub=conn.executeQuery("select * from tb_subType where superType="+P_superID);
int subID=-1;
String subName="";
%>
<html>
<head>
<script language="javascript">
function mycheck(){
	if (form1.goodsName.value==""){
		alert("��������Ʒ���ƣ�");form1.goodsName.focus();return;
	}
	if (form1.goodsPicture.value==""){
		alert("������ͼƬ�ļ���·����");form1.goodsPicture.focus();return;
	}
	if (form1.goodsPrice.value==""){
		alert("��������Ʒ�Ķ��ۣ�");form1.goodsPrice.focus();return;
	}
	if (isNaN(form1.goodsPrice.value)){
		alert("������Ķ��۴������������룡");form1.goodsPrice.value="";form1.goodsPrice.focus();return;
	}	
	if (form1.goodsIntroduce.value==""){
		alert("��������Ʒ��飡");form1.goodsIntroduce.focus();return;
	}		
	form1.submit();
}



function BrowseServer( startupPath, functionData )
{
	// You can use the "CKFinder" class to render CKFinder in a page:
	var finder = new CKFinder();

	// The path for the installation of CKFinder (default = "/ckfinder/").
	finder.basePath = '../';

	//Startup path in a form: "Type:/path/to/directory/"
	finder.startupPath = startupPath;

	// Name of a function which is called when a file is selected in CKFinder.
	finder.selectActionFunction = SetFileField;

	// Additional data to be passed to the selectActionFunction in a second argument.
	// We'll use this feature to pass the Id of a field that will be updated.
	finder.selectActionData = functionData;

	// Name of a function which is called when a thumbnail is selected in CKFinder.
	finder.selectThumbnailActionFunction = ShowThumbnails;

	// Launch CKFinder
	finder.popup();
}

// This is a sample function which is called when a file is selected in CKFinder.
function SetFileField( fileUrl, data )
{
	document.getElementById( data["selectActionData"] ).value = fileUrl;
}

// This is a sample function which is called when a thumbnail is selected in CKFinder.
function ShowThumbnails( fileUrl, data )
{
	// this = CKFinderAPI
	var sFileName = this.getSelectedFile().name;
	document.getElementById( 'thumbnails' ).innerHTML +=
			'<div class="thumb">' +
				'<img src="' + fileUrl + '" />' +
				'<div class="caption">' +
					'<a href="' + data["fileUrl"] + '" target="_parent">' + sFileName + '</a> (' + data["fileSize"] + 'KB)' +
				'</div>' +
			'</div>';

	document.getElementById( 'preview' ).style.display = "";
	// It is not required to return any value.
	// When false is returned, CKFinder will not close automatically.
	return false;
}
	
</script>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<link href="../css/styleadd.css" rel="stylesheet">
<script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
</head>
<body>
<table width="800" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="932" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td width="57%" height="31"></td>
        <td width="3%"><img src="images/list.gif" width="11" height="13"></td>
        <td width="11%"><div class="titlebt"><a href="index.jsp?id=5">��������</a></div></td>
        <td width="3%"><img src="images/list.gif" width="11" height="13"></td>
        <td width="10%"><div class="titlebt"><a href="index.jsp?id=7">С�������</a></div></td>
        <td width="3%"><img src="images/list.gif" width="11" height="13"></td>
        <td width="13%"><div class="titlebt"><a href="#">�����Ʒ</a></div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td align="left" valign="top" bgcolor="#F7F8F9"><p><img src="images/spxxtj.jpg" width="750" height="104">
    
     			  			  <form action="goods_add_deal.jsp" method="post" name="form1">
			    <table width="750"  border="0" align="left" cellpadding="-2" cellspacing="-2" bordercolordark="#FFFFFF">
                  <tr>
                    <td height="36" align="left">���������������ࣺ</td>
                    <td width="29%" height="36" align="left"><script language="javascript">
					function F_super(val){
						window.location.href="index.jsp?id=9&&superID="+val;   //ʵ�ּ����˵�
					}
					</script>
                      <select name="supertype" class="textarea" id="supertype" onChange="F_super(this.value)">
					  <%rs_super.first();
					  do{
						  superID=rs_super.getInt(1);
						  superName=rs_super.getString(2);
					  %>
					  <option value="<%=superID%>"<%if(superID==P_superID){out.println(" selected");/*ע��˴��ķֺ�*/}%>><%=superName%></option>
					  <%}while(rs_super.next());%>
                      </select></td>
                    <td width="17%" height="36" align="left"> ������������С�ࣺ</td>
                    <td width="38%" height="36" align="left"><select name="goodsTypeID" class="textarea" id="goodsTypeID">
					  <%while(rs_sub.next()){
					  	subID=rs_sub.getInt(1);
					  	subName=rs_sub.getString(3);
					  %>
					   <option value="<%=subID%>"><%=subName%></option>
					  <%}%>
                     </select></td>
                  </tr>
                  <tr>
                    <td width="16%" height="37" align="left">��Ʒ�����������ƣ�</td>
                    <td height="37" align="left"><input  name="goodsName" type="text" size="24" /></td>
                    <td height="37" align="left">���������������ۣ�</td>
                    <td height="37" align="left"><input name="goodsPrice" type="text" class="Sytle_text" id="goodsPrice">
                    (Ԫ)</td>
                  </tr>
                  <tr>
                    <td height="41" align="left">��ƷͼƬ������־��</td>
                    <td height="41" align="left"><input  name="goodsPicture" type="text" class="Style_upload" id="goodsPicture">
                       <input name="button" type="button" onClick="BrowseServer( '', 'goodsPicture' );" value="���" /></td>
                    <td height="41" align="left">��Ʒ����һ��ͼƬ��</td>
                    <td height="41" align="left"><input  name="goodsPicture1" type="text" class="Style_upload" id="goodsPicture1"> 
                      <input name="button" type="button" onClick="BrowseServer( '', 'goodsPicture1' );" value="���" /></td>
                  </tr>
                  <tr>
                    <td height="43" align="left">��Ʒ�������ͼƬ��</td>
                    <td align="left"><label></label>
                    <input  name="goodsPicture2" type="text" class="Style_upload" id="goodsPicture2">
                    <input name="button2" type="button" onClick="BrowseServer( '', 'goodsPicture2' );" value="���" /></td>
                    <td align="left">��Ʒ��������ͼƬ��</td>
                    <td align="left"><label>
                    <input  name="goodsPicture3" type="text" class="Style_upload" id="goodsPicture3">
                    <input name="button" type="button" onClick="BrowseServer( '', 'goodsPicture3' );" value="���" /></label></td>
                  </tr>
                  <tr>
                    <td height="43" align="left">��Ʒ�����ļ�ͼƬ��</td>
                    <td align="left"><label>
                      <input  name="goodsPicture4" type="text" class="Style_upload" id="goodsPicture4">
                    <input name="button2" type="button" onClick="BrowseServer( '', 'goodsPicture4' );" value="���" /></label></td>
                    <td align="left">��Ʒ�����弶ͼƬ��</td>
                    <td align="left"><label>
                      <input  name="goodsPicture5" type="text" class="Style_upload" id="goodsPicture5">
                    <input name="button" type="button" onClick="BrowseServer( '', 'goodsPicture5' );" value="���" /></label></td>
                  </tr>
                  <tr>
                    <td height="47" align="left">��Ʒ��������ͼƬ��</td>
                    <td align="left"><label>
                      <input  name="goodsPicture6" type="text" class="Style_upload" id="goodsPicture6">
                    </label><input name="button2" type="button" onClick="BrowseServer( '', 'goodsPicture6' );" value="���" /></td>
                    <td align="left">�ࡡ�����������ͣ�</td>
                    <td align="left"><label>
                      <input name="goodsType" type="text" id="goodsType">
                    </label></td>
                  </tr>
                  <tr>
                    <td height="24">�Ƿ񡡡�������Ʒ��</td>
                    <td align="left"><input name="isNew" type="radio" class="noborder" value="1" checked>
��
  <input name="isNew" type="radio" class="noborder" value="0">
��</td>
                    <td align="left">�Ƿ񡡡������ؼۣ�</td>
                    <td align="left"><input name="isSale" type="radio" class="noborder" value="1" checked>
��
  <input name="isSale" type="radio" class="noborder" value="0">
��</td>
                  </tr>
                  <tr>
                    <td height="103" align="left">��Ʒ����������飺</td>
                    <td colspan="3" align="left"><textarea name="goodsIntroduce" cols="73" rows="5" class="textarea" id="goodsIntroduce"></textarea></td>
                  </tr>
                  <tr>
                    <td height="38" colspan="3" align="left">����������������
                      ��
                      <input name="Button" type="button" class="btn_grey" value="����" onClick="mycheck()">
&nbsp;                        
<input name="Submit2" type="reset" class="btn_grey" value="����">
                        &nbsp;
                        <input name="Submit3" type="button" class="btn_grey" value="����" onClick="JScript:history.back(-1)">                    </td>
                    <td height="38" align="center">&nbsp;</td>
                  </tr>
                </table>
			                  </form></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
