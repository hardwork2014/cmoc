package com.xuequ.cmoc.pay.wepay.protocol.payProtocol;

/**
 * User: rizenguo
 * Date: 2014/10/22
 * Time: 16:42
 * 文档API: https://pay.weixin.qq.com/wiki/doc/api/jsapi.php?chapter=9_1
 */

/**
 * 被扫支付提交Post数据给到API之后，API会返回XML格式的数据，这个类用来装这些数据
 */
public class UnifiedOrderResData {
    //返回状态码 SUCCESS/FAIL
    private String return_code = "";
    //返回信息
    private String return_msg = "";

    //协议返回的具体数据（以下字段在return_code 为SUCCESS 的时候有返回）
    //调用接口提交的公众账号ID
    private String appid = "";
    //调用接口提交的商户号
    private String mch_id = "";
    //自定义参数，可以为请求支付的终端设备号等
    private String device_info = "";
    //随机字符串
    private String nonce_str = "";
    //签名
    private String sign = "";
    //业务结果
    private String result_code = "";
    //错误代码
    private String err_code = "";
    //错误代码描述
    private String err_code_des = "";

    //业务返回的具体数据（以下字段在return_code 和result_code 都为SUCCESS 的时候有返回）
    //交易类型
    private String trade_type = "";
    //预支付交易会话标识
    private String prepay_id = "";
    //trade_type为NATIVE时有返回，用于生成二维码，展示给用户进行扫码支付
    private String code_url = "";

    public String getReturn_code() {
        return return_code;
    }

    public void setReturn_code(String return_code) {
        this.return_code = return_code;
    }

    public String getReturn_msg() {
        return return_msg;
    }

    public void setReturn_msg(String return_msg) {
        this.return_msg = return_msg;
    }

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getMch_id() {
        return mch_id;
    }

    public void setMch_id(String mch_id) {
        this.mch_id = mch_id;
    }

    public String getDevice_info() {
        return device_info;
    }

    public void setDevice_info(String device_info) {
        this.device_info = device_info;
    }

    public String getNonce_str() {
        return nonce_str;
    }

    public void setNonce_str(String nonce_str) {
        this.nonce_str = nonce_str;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getResult_code() {
        return result_code;
    }

    public void setResult_code(String result_code) {
        this.result_code = result_code;
    }

    public String getErr_code() {
        return err_code;
    }

    public void setErr_code(String err_code) {
        this.err_code = err_code;
    }

    public String getErr_code_des() {
        return err_code_des;
    }

    public void setErr_code_des(String err_code_des) {
        this.err_code_des = err_code_des;
    }

	public String getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(String trade_type) {
		this.trade_type = trade_type;
	}

	public String getPrepay_id() {
		return prepay_id;
	}

	public void setPrepay_id(String prepay_id) {
		this.prepay_id = prepay_id;
	}

	public String getCode_url() {
		return code_url;
	}

	public void setCode_url(String code_url) {
		this.code_url = code_url;
	}

    

}
