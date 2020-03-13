<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/view/conf/farmtag.tld" prefix="PF"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<PF:basePath/>">
<title>答题卡历史记录数据管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<jsp:include page="/view/conf/include.jsp"></jsp:include>
</head>
<body class="easyui-layout">
	<div data-options="region:'west',split:true,border:false"
		style="width: 250px;">
		<div class="TREE_COMMON_BOX_SPLIT_DIV">
			<a id="MessageconsoleTreeReload" href="javascript:void(0)"
				class="easyui-linkbutton" data-options="plain:true"
				iconCls="icon-reload">刷新</a> <a id="MessageconsoleTreeOpenAll"
				href="javascript:void(0)" class="easyui-linkbutton"
				data-options="plain:true" iconCls="icon-sitemap">展开</a>
		</div>
		<ul id="MessageconsoleTree"></ul>
	</div>
	<div class="easyui-layout" data-options="region:'center',border:false">
		<div data-options="region:'north',border:false">
			<form id="searchCardhisForm">
				<table class="editTable">
					<tr>
						<td class="title">组织机构:</td>
						<td><input id="PARENTTITLE_RULE" type="text"
							readonly="readonly" style="background: #F3F3E8"> <input
							id="PARENTID_RULE" name="PARENTID:=" type="hidden"></td>
						<td class="title">人员姓名:</td>
						<td><input name="F.NAME:like" type="text"></td>
						<td class="title">考场名称:</td>
						<td><input name="D.NAME:like" type="text"></td>
					</tr>
					<tr>
						<td class="title">考卷名称:</td>
						<td><input name="E.NAME:like" type="text"></td>
						<td class="title">考试时间起始:</td>
						<td><input name="STARTTIME:like" class="easyui-datebox" type="text"></td>
						<td class="title">考试时间结束:</td>
						<td><input name="ENDTIME:like" class="easyui-datebox" type="text"></td>
					</tr>
					<tr style="text-align: center;">
						<td colspan="6"><a id="a_search" href="javascript:void(0)"
							class="easyui-linkbutton" iconCls="icon-search">查询</a> <a
							id="a_reset" href="javascript:void(0)" class="easyui-linkbutton"
							iconCls="icon-reload">清除条件</a></td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false">
			<table id="dataCardhisGrid">
				<thead>
					<tr>
						<th data-options="field:'ck',checkbox:true"></th>
						<th field="USERNAME" data-options="sortable:true" width="50">人员</th>
						<th field="ORGNAME" data-options="sortable:true" width="50">机构</th>
						<th field="ROOMNAME" data-options="sortable:true" width="60">考场</th>
						<th field="PAPERNAME" data-options="sortable:true" width="60">考卷</th>
						<th field="POINT" data-options="sortable:true" width="50">成绩</th>
						<th field="STARTTIME" data-options="sortable:true" width="50">答题时间</th>
						<th field="PSTATE" data-options="sortable:true" width="50">状态</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body> 
<script type="text/javascript">
	var url_searchActionCardhis = "cardquery/liveQuery.do";//查询URL
	var title_windowCardhis = "答题卡历史记录管理";//功能名称
	var gridCardhis;//数据表格对象
	var searchCardhis;//条件查询组件对象
	var toolBarCardhis = [
	];
	$(function() {
		//初始化数据表格
		gridCardhis = $('#dataCardhisGrid').datagrid({
			url : url_searchActionCardhis,
			fit : true,
			fitColumns : true,
			'toolbar' : toolBarCardhis,
			pagination : true,
			closable : true,
			checkOnSelect : true,
			border : false,
			striped : true,
			rownumbers : true,
			ctrlSelect : true
		});
		//初始化条件查询
		searchCardhis = $('#searchCardhisForm').searchForm({
			gridObj : gridCardhis
		});
		$('#MessageconsoleTree').tree({
			url : 'organization/organizationTree.do',
			onSelect : function(node) {
				$('#PARENTID_RULE').val(node.id);
				$('#PARENTTITLE_RULE').val(node.text);
				searchCardhis.dosearch({
					'ruleText' : searchCardhis.arrayStr()
				});
			}
		});
		$('#MessageconsoleTreeReload').bind('click', function() {
			$('#MessageconsoleTree').tree('reload');
		});
		$('#MessageconsoleTreeOpenAll').bind('click', function() {
			$('#MessageconsoleTree').tree('expandAll');
		});
	});
</script>
</html>