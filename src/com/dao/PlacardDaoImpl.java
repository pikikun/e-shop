package com.dao;

import commerce.placard;

import com.DB.chStr;
import com.DB.connDB;

public class PlacardDaoImpl implements PlacardDao{
  connDB conn=new connDB();
  chStr chStr=new chStr();
  public int insert(placard p) {
    int ret=-1;
    try{
      String sql = "insert into tb_bbs (BBSTitle,BBSContent) values('" +
          chStr.chStr(p.getBBSTitle()) + "','" + chStr.chStr(p.getBBSContent()) +
          "')";
      ret = conn.executeUpdate(sql);
    }catch (Exception e){
      ret=0;
    }
    return ret;
  }

}
