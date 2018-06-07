package com.wgh.dao;

import commerce.member;
import com.wgh.DB.connDB;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.*;
import com.wgh.DB.chStr;

public class MemberDaoImpl
    implements MemberDao {
  private connDB conn = new connDB();
  //ִ�в������
  public int insert(member m) {
    chStr chStr = new chStr();
    int ret = -1;
    try {
      String sql = "Insert into tb_Member (MemberName,MemberTrueName,MemberPWD,MemberCity,MemberAddress,MemberPostcode,MemberCardNO,MemberCardType,MemberTel,MemberEmail) values('" +
          chStr.chStr(m.getMemberName()) + "','" + chStr.chStr(m.getMemberTrueName()) +
          "','" + chStr.chStr(m.getMemberPWD()) +
          "','" + chStr.chStr(m.getMemberCity()) + "','" + chStr.chStr(m.getMemberAddress()) +
          "','" +
          chStr.chStr(m.getMemberPostcode()) +
          "','" + chStr.chStr(m.getMemberCardNO()) + "','" +
          chStr.chStr(m.getMemberCardType()) + "','" + chStr.chStr(m.getMemberTel()) +
          "','" + chStr.chStr(m.getMemberEmail()) + "')";
      ret = conn.executeUpdate(sql);
    }
    catch (Exception e) {
      ret = 0;
    }
    conn.close();
    return ret;
  }

  //ִ���޸Ĳ���
  public int update(member m) {
    int ret = -1;
    chStr chStr = new chStr();
    try {
      String sql = "update tb_member set MemberTrueName='" +
          chStr.chStr(m.getMemberTrueName()) +
          "',MemberPWD='" + chStr.chStr(m.getMemberPWD()) + "',MemberCity='" +
          chStr.chStr(m.getMemberCity()) + "',MemberAddress='" + chStr.chStr(m.getMemberAddress()) +
          "',MemberPostcode='" + chStr.chStr(m.getMemberPostcode()) +
          "',MemberCardNO='" + chStr.chStr(m.getMemberCardNO()) + "',MemberCardType='" +
          chStr.chStr(m.getMemberCardType()) + "',MemberTel='" + chStr.chStr(m.getMemberTel()) +
          "',MemberEmail='" + chStr.chStr(m.getMemberEmail()) + "' where MemberID=" + m.getMemberID();
      ret = conn.executeUpdate(sql);
    }
    catch (Exception e) {
      ret = 0;
    }
    conn.close();
    return ret;
  }

  //ִ��ɾ������
  public int delete(member m) {
    String sql = "delect from tb_member where ID=" + m.getMemberID();
    int ret = conn.executeUpdate(sql);
    conn.close();
    return 0;
  }

  //ִ�в�ѯ����
  public List select() {
    member form = null;
    List list = new ArrayList();
    String sql = "select * from tb_member";
    ResultSet rs = conn.executeQuery(sql);
    try {
      while (rs.next()) {
        form = new member();
        form.setMemberID(Integer.valueOf(rs.getString(1)));

        list.add(form);
      }
    }
    catch (SQLException ex) {
    }
    conn.close();
    return list;
  }

  public member select1() {
    return null;
  }

}
