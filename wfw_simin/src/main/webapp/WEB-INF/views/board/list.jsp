<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="../resources/jqui/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="../resources/jqgrid/css/ui.jqgrid.css" /> 

<script type="text/javascript" src="../resources/js/jquery-3.6.0.min.js"></script> 
<script src="../resources/jqgrid/js/i18n/grid.locale-kr.js" type="text/javascript"></script> 
<script src="../resources/jqgrid/js/minified/jquery.jqGrid.min.js" type="text/javascript"></script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 게시판</title>
</head>

<script type = "text/javascript">
var searchResultColNames =  ['번호', '제목',  '내용', '작성일', '작성자', '조회수'];

$(function() {
  $("#mainGrid").jqGrid({
	  url:"json.do",
	  datatype:"json",
	  caption:"list",
	  mtype:"get",
    height: 261,
    width: 800,
    colNames: searchResultColNames,
    colModel: [
    	{name:"bno", index:"bno",align:"center"},
    	{name:"title", index:"title",align:"center"},
    	{name:"content", index:"content",align:"center"},
    	{name:"regDate", index:"regDate",align:"center"},
    	{name:"writer", index:"writer",align:"center"},
    	{name:"viewCnt", index:"viewCnt",align:"center"},
    	
    ],
    rowNum : 10,
    pager: "#pager" ,
    autowidth:true,
    loadonce:true,
    onSelectRow: function(rowid, iRow, iCol, e) {
    	var bno = $("#mainGrid").getRowData(rowid)
      	
      	location.href= "/board/view?bno="+rowid;
    },
  });
});

</script>

<style>
input[type=button]{
  background-color: #2C3689;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  text-align: right;
}

input[type=button]:hover {
  background-color: #45a049;
}

</style>

<body>

<jsp:include page="../common/header.jsp"/>


<input type="button" value ="글 쓰기" onClick="location.href='/board/write'"><br/><br/>

 
<div class="line">

</div>
<div class="tableWrap"> 
	<table id="mainGrid">
	</table> 
	<div id="pager">
	</div> 
</div>


</body>

<jsp:include page="../common/footer.jsp"/>

</html>