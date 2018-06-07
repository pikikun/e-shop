package com.dao;

import commerce.SuperType;

import com.DB.chStr;
import com.DB.connDB;

public class SuperTypeDaoImpl implements SupertypeDao {
  connDB conn=new connDB();
  chStr chStr=new chStr();
  public int insert(SuperType spt) {
    int ret=-1;
    try{
      String sql = "insert into tb_superType (typename) values('" + chStr.chStr(spt.gettypename()) +
        "')";
      ret = conn.executeUpdate(sql);
    }catch (Exception e){
      ret=0;
    }
   return ret;
  }
}
