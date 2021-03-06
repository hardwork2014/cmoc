package com.xuequ.cmoc.core.wechat.model;

import java.io.Serializable;

import com.xuequ.cmoc.common.WechatConfigure;
import com.xuequ.cmoc.utils.TextUtil;

public class WechatQrcodeRsp implements Serializable {

	private static final long serialVersionUID = 5936948345036355308L;
	/*
	 * 获取的二维码ticket，凭借此ticket可以在有效时间内换取二维码
	 */
	private String ticket;
	/*
	 * 该二维码有效时间，以秒为单位。 最大不超过604800（即7天）
	 */
	private String expire_seconds;
	/*
	 * 二维码图片解析后的地址，开发者可根据该地址自行生成需要的二维码图片
	 */
	private String url;
	
	public String getTicket() {
		return ticket;
	}
	public void setTicket(String ticket) {
		this.ticket = ticket;
	}
	public String getExpire_seconds() {
		return expire_seconds;
	}
	public void setExpire_seconds(String expire_seconds) {
		this.expire_seconds = expire_seconds;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	/**
	 * 二维码图片
	 * @auther 胡启萌
	 * @Date 2016年12月3日
	 * @return
	 */
	public String getQrcode() {
		return TextUtil.format(WechatConfigure.getInstance().
				getShowQrcode(), ticket);
	}
	
}
