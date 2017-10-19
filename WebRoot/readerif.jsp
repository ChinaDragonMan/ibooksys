<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.dao.ReaderDAO" %>
<%@ page import="com.actionForm.ReaderForm" %>
<%@ page import="java.util.*"%>
<html>
<%
Collection coll=(Collection)request.getAttribute("reader");
%>
<head>
<title>图书馆管理系统</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body onLoad="clockon(bgclock)">
<%@include file="banner.jsp"%>
<%@include file="navigation.jsp"%>
<table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" class="word_orange">当前位置：读者管理 &gt; 读者档案查询 &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td align="center" valign="top"><%
if(coll==null || coll.isEmpty()){
%>
          <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">暂无读者信息！</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="reader_add.jsp">添加读者信息</a> </td>
  </tr>
</table>
 <%
}else{
  //通过迭代方式显示数据
  Iterator it=coll.iterator();
  int ID=0;
  String name="";
  String typename="";
  String barcode="";
  String paperType="";
  String paperNO="";
  String tel="";
  String email="";
  %>
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>&nbsp;
  
  <form action="" method="post">
    	<label>年级:</label>
    	<select name="grade">
    	<option value="0" selected>未选择</option>
    	<option value="1">一年级</option>
    	<option value="2">二年级</option>
    	<option value="3">三年级</option>
    	<option value="4">四年级</option>
    	<option value="5">五年级</option>
    	<option value="6">六年级</option>
    	</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<label>性别:</label>
    	<select name="sex">
    	<option value="0" selected>未选择</option>
    	<option value="1">男</option>
    	<option value="2">女</option>
    	</select>
    	
    	
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="submit"  class="btn_grey" value="查找">
	</form>
	
		  
  </tr>
</table>  
  <table width="95%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#F6B83B" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#e3F4F7">
    <td width="13%" bgcolor="#F9D16B">条形码</td>  
    <td width="10%" bgcolor="#F9D16B">姓名</td>
    <td width="8%" bgcolor="#F9D16B">读者类型</td>
    <td width="12%" bgcolor="#F9D16B">证件类型</td>
    <td width="20%" bgcolor="#F9D16B">证件号码</td>
    <td width="12%" bgcolor="#F9D16B">年级</td>
    <td width="15%" bgcolor="#F9D16B">Email</td>
    
  </tr>
<%
  while(it.hasNext()){
    ReaderForm readerForm=(ReaderForm)it.next();
	ID=readerForm.getId().intValue();
	//name=chStr.toChinese(readerForm.getName());
	name=readerForm.getName();
	barcode=readerForm.getBarcode();
	//typename=chStr.nullToString(chStr.toChinese(readerForm.getTypename()),"&nbsp;");
	typename=chStr.nullToString(readerForm.getTypename(),"&nbsp;");
	//paperType=chStr.toChinese(readerForm.getPaperType());
	paperType=readerForm.getPaperType();
	paperNO=chStr.nullToString(readerForm.getPaperNO(),"&nbsp;");
	tel=chStr.nullToString(readerForm.getTel(),"&nbsp;");
	email=chStr.nullToString(readerForm.getEmail(),"&nbsp;");
	%> 
  <tr>
    <td style="padding:5px;"><%=barcode%></td>  
    <td style="padding:5px;"><a href="reader.do?action=readerDetail&ID=<%=ID%>"><%=name%></a></td>
    <td style="padding:5px;"><%=typename%></td>
    <td align="center"><%=paperType%></td>
    <td align="center"><%=paperNO%></td>
    <td align="center"><%=tel%></td>
    <td align="center"><%=email%></td>
    
  </tr>
<%
  }
}
%>  
</table></td>
      </tr>
    </table>
</td>
  </tr>
</table><%@ include file="copyright.jsp"%></td>
  </tr>
</table>
</body>
</html>
