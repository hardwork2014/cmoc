var courseListUrl = basePath + "/course/json/list/query";

var dataGrid;
var confirmDialog;
$(function() {
	loadData();
});

function loadData() {
	dataGrid = $('#dataGrid').datagrid({
		url : courseListUrl,
		fit : true,
		fitColumns : true,
		border : true,
		pagination : true,
		idField : 'id',
		pageSize : config.pageSize,
		autoRowHeight : 140,
		pageList : config.pageList,
		checkOnSelect : true,
		selectOnCheck : true,
		singleSelect : false,
		nowrap : true,
		striped : true,
		rownumbers : true,
		columns : [ [  {
			field : 'action',
			title : '操作',
			align : 'center',
			formatter : function(value, row, index) {
				return value;
			}
		}, {
			field : 'shelves',
			title : '上下架状态',
			align : "center",
			resizable : true
		}, {
			field : 'name',
			title : '课程名称',
			align : "center",
			resizable : true
		}, {
			field : 'courseNum',
			title : '课程期数',
			align : "center",
			resizable : true
		}, {
			field : 'courseType',
			title : '课程类型',
			align : "center",
			resizable : true
		}, {
			field : 'city',
			title : '城市',
			align : "center",
			resizable : true
		},{
			field : 'addr',
			title : '地址',
			align : "center",
			resizable : true
		},{
			field : 'startDate',
			title : '课程开始时间',
			align : "center",
			resizable : true,
			formatter : function(value) {
				return getTime(value, "yyyy-MM-dd hh:mm");
			}
		}, {
			field : 'endDate',
			title : '课程结束时间',
			align : "center",
			resizable : true,
			formatter : function(value) {
				return getTime(value, "yyyy-MM-dd hh:mm");
			}
		}, {
			field : 'unitPrice',
			title : '价格',
			align : "center",
			resizable : true,
			formatter: function(v) {
				return sexFormat(v);
			}
		}, {
			field : 'coursePeoples',
			title : '课程开团人数',
			align : "center",
			resizable : true
		}, {
			field : 'courseDesc',
			title : '课程简述',
			align : "center",
			resizable : true
		}, {
			field : 'createTime',
			title : '创建时间',
			align : "center",
			resizable : true,
			formatter : function(value) {
				return getTime(value, "yyyy-MM-dd hh:mm:ss");
			}
		}] ]
	});
}

function search(formId){
	dataGrid.datagrid('load', $.serializeObject($('#' + formId)));
}

function closeFormPanel(formId){
	cleanFormPanel(formId);
	confirmDialog.dialog("close");
}

/**
 * 清空表单
 */
var cleanFormPanel=function(formId){
	$("#" + formId)[0].reset();
	$(".valid").removeClass("valid");
	$(".error").removeClass("error");
	$("label").find("span").remove();
}

//取消选中
var cancelSelect = function(){
	if (dataGrid != undefined){
		dataGrid.datagrid("clearSelections");
	}
}


function returnBack(){
	window.location.reload();
}

var auditDialog = function(data){
	var rows = dataGrid.datagrid('getSelections');
	if (rows.length == 0 && data == null) {
		$.messager.alert('系统提示', '请选择数据再进行操作', 'warning');
		return;
	} else {
		confirmDialog = $('#auditDelDiolog').dialog({
			title : "透明人报名审核",
			modal : true,
			width : 600,
			top : 100,
			draggable : true,
			resizable : true,
			buttons : '#btns',
			onClose : function() {
				cleanFormPanel("auditDelForm");
			}
		}).show();
	}
}

function submitAudit(ids, isEffect, reason){
	$.ajax({
		url : hmSignAuditUrl,
		type : 'POST',
		dataType:"json",
		data : {
			ids: ids,
			isEffect: isEffect,
			reason: reason
		},
		error : function() {
			$.messager.alert('系统提示', '审核失败', 'error');
		},
		success : function(data) {
			if (data.code == '000') {
				$.messager.alert('系统提示','审核成功', 'info');
				loadData();
				closeFormPanel("auditDelForm");
			} else {
				$.messager.alert('系统提示',data.msg, 'warning');
			}
		}
	});
}

function addCourse() {
	window.location.href=basePath + "/course/json/edit";
}