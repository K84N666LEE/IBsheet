<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="./ibsheetinfo.js"></script>
	<script src="./ibsheet.js"></script>
	<script>
		function initPage(){
			createIBSheet2(document.getElementById("sheet_DIV"), "mySheet", "100%", "400px");
			
			var initSheet = {};
			initSheet.Cfg = {MergeSheet : msHeaderOnly, AutoFitColWidth:"initsearch"};
			initSheet.Cols = [
				{"DBTN":"X","Header":"상태","SaveName":"sStatus","Type":"Status","Align":"Center","MinWidth":60},
				{"DBTN":"X","Header":"달력","SaveName":"date","Type":"Text"},
				{"DBTN":"X","Header":"결재일","SaveName":"pay","Type":"Combo","Format":"Ymd","Align":"Center","MinWidth":100,"ComboText":"인사 | 사장","ComboCode":"01 | 02"},
				{"DBTN":"X","Header":"만기일","SaveName":"end","Type":"Date","Format":"Ymd","Align":"Center","MinWidth":100},
				{"DBTN":"X","Header":"직급","SaveName":"position","Type":"Button"}
			];
			IBS_InitSheet(mySheet, initSheet);
		}
		function action(str){
			switch(str){
			case 'insert':
				mySheet.DataInsert();
            break;
			case 'down':
				mySheet.Down2Excel({FileName:"mySheet.xlsx", SheetDesign:1});
			break;
			
			case 'search':
				var param = FormQueryString(document.frm);
				alert(param);
					mySheet.DoSearch("search.jsp", param);
			break;
			}
		}
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="initPage()">
	<form name="frm">
		사원명 : <input type="text" name="sa_name"><br>
		부서 : <input type="text" name="sa_dept"><br>
	</form>
	<button type="button" onClick="action('insert')">추가</button>
	<button type="button" onClick="action('down')">엑셀다운</button>
	<button type="button" onClick="action('search')">조회</button>
	<hr>
	<div id="sheet_DIV"></div>

</body>
</html>

// search.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] sa_name = request.getParameterValues("sa_name"); //배열은 values로 받음.
	System.out.print("name" + sa_name);
%>   