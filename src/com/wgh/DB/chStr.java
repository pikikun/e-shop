package com.wgh.DB;
public class chStr {
        /***************************************************
                *method name:	chStr()
                *method function:������������������
                *return value:  String
                *2006-01-08
        ****************************************************/
        public String chStr(String str){
                if(str==null){
                        str="";
                }else{
                        try{
                                str=(new String(str.getBytes("iso-8859-1"),"GB2312")).trim();
                        }catch(Exception e){
                                e.printStackTrace(System.err);
                        }
                }
                return str;
            }
        /***************************************************
          *method name:convertStr()
          *method function:��ʾ�ı��еĻس����С��ո񼰱�֤HTML��ǵ��������
          *return value:  String
          * author:wgh
          *2006-01-08
        ****************************************************/
       public String convertStr(String str1){
           if(str1==null){
               str1="";
           }else{
               try{
                 //replaceAll(String str1,String str2)����ΪJDK1.4.x���·�����ʹ��str2�滻�ַ����е�����str2�ַ���
                 str1=str1.replaceAll("<","&lt;");//�滻�ַ����е�"<"��">"�ַ�����֤HTML��ǵ��������
                 str1=str1.replaceAll(">","&gt;");
                 str1=str1.replaceAll(" ","&nbsp;");
                 str1=str1.replaceAll("\r\n","<br>");
               }catch(Exception e){
                       e.printStackTrace(System.err);
               }
           }
           return str1;
       }
}
