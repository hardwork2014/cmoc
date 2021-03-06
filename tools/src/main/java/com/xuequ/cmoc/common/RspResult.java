package com.xuequ.cmoc.common;

import com.xuequ.cmoc.common.enums.StatusEnum;

public class RspResult {

	private String code;
	
	private String msg;
	
	private Object data;
	
	

	public RspResult() {
	}
	
	public RspResult(String code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	
	public RspResult(String code, String msg, Object data) {
		this.code = code;
		this.msg = msg;
		this.data = data;
	}
	
	public RspResult(StatusEnum status, Object data) {
		this.code = status.getCode();
		this.msg = status.getMsg();
		this.data = data;
	}
	
	public RspResult(StatusEnum status) {
		this.code = status.getCode();
		this.msg = status.getMsg();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
	
}
