<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.cssmoban.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Template</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" type="text/css" href="register.css" />
<script type="text/javascript" src="js/check.js"></script>

</head>
<body>
<div class="main">

  

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        </div>
        <div class="article">
          <h2>�����������������������������������û�ע��</h2>
          <form action="register_deal.jsp" method="post" name="myform" id="sendemail">
          <ol><li>
	<script language="javascript">
						   function openwin(UID){
						   if (UID==""){
								alert("�������û���!");
								myform.memberName.focus();
								return;
						   }
						   var str="checkUserName.jsp?memberName="+UID;
						   window.showModalDialog(str,"","dialogWidth=300px;dialogHeight=150px;status=no;help=no;scrollbars=no");
						   }
			    </script>
            <label for="name"></label>
            �á�������
            
            <input name="memberName" class="text" id="memberName"  />
            <a href="#" onClick="openwin(myform.memberName.value)">������û�����</a> </li>
		    <li></li>
		    <li>
            ��ʵ������
              <input id="memberTrueName" name="memberTrueName" class="text" />
          </li>
		    <li></li>
		    <li>��&nbsp;&nbsp;&nbsp;&nbsp;���롡
              <input name="memberPWD" type="password" class="text" id="memberPWD" />
          </li>
		    <li></li>
		    <li>
            ȷ�����롡
              <input name="pwd1" type="password" class="text" id="pwd1" />
          </li>
		    <li></li>
		    <li>
            ���ڳ��С�
              <input id="memberCity" name="memberCity" class="text" />
          </li>
		    <li></li>
		    <li> ��ϵ��ַ </li>
		    <li>����������
              <textarea name="memberAddress" cols="25" rows="3" id="memberAddress"></textarea>
		  </li>
		  <li> </li>
		  <li> </li>
		  <li>
           �������롡
             <input id="memberPostcode" name="memberPostcode" class="text" />
          </li>
		  <li></li>
		  <li>
            ֤�����롡
              <input id="memberCardNO" name="memberCardNO" class="text" />
          </li>
		  <li>
            <label for="name">֤�����</label>
            ������������
            <input name="memberCardType" type="radio" class="noborder" value="���֤" checked="checked" />
���֤&nbsp;
<input name="memberCardType" type="radio" class="noborder" value="����֤" />
����֤
<input name="memberCardType" type="radio" class="noborder" value="ѧ��֤" />
ѧ��֤</li>
		  <li></li>
		  <li>
            ��ϵ�绰��
              <input id="memberTel" name="memberTel" class="text" />
          </li>
          <li></li>
          <li>
            �ʡ����䡡
              <input id="memberEmail" name="memberEmail" class="text" />
          </li>
           </ol>
          <p>&nbsp;</p>
          <ol>
            <ol>
              <li>                </li>
            </ol>
            <li>
              
               ������������ 
                 <input name="�ύ" type="button" value="ע��" class="button" onClick="check()"/>������
              
               ��
                 <input name="" type="reset" value="����" class="button" /> ��<a href="index.jsp">              ����</a>          
              <div class="clr"></div>
            </li>
          </ol>
          </form>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="footer"></div>
</div>
</body>
</html>
