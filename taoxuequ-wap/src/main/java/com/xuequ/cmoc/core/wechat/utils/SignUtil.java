package com.xuequ.cmoc.core.wechat.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

import com.xuequ.cmoc.common.WechatConfigure;

public class SignUtil {
	
	/**
	 * 校验消息是否从公众号来
	 * @auther 胡启萌
	 * @Date 2016年11月28日
	 * @param signature 微信加密签名
	 * @param timestamp 时间戳
	 * @param nonce 随机数
	 * @return
	 */
	public static boolean checkSignature(String signature, 
			String timestamp, String nonce) {
		String[] str = {WechatConfigure.getInstance().getToken() , timestamp, nonce };
        Arrays.sort(str); // 字典序排序
        String bigStr = str[0] + str[1] + str[2];
        // SHA1加密
        String digest = new SHA1().getDigestOfString(bigStr.getBytes()).toLowerCase();
        // 确认请求来至微信
        if (digest.equals(signature)) {
        	return true;
        }
        return false;
	}
	
	// 获得js signature
	public static String getSignature(WechatModel vo) {
	    /****
	     * 对 jsapi_ticket、 timestamp 和 nonce 按字典排序 对所有待签名参数按照字段名的 ASCII
	     * 码从小到大排序（字典序）后，使用 URL 键值对的格式（即key1=value1&key2=value2…）拼接成字符串
	     * string1。这里需要注意的是所有参数名均为小写字符。 接下来对 string1 作 sha1 加密，字段名和字段值都采用原始值，不进行
	     * URL 转义。即 signature=sha1(string1)。
	     * **如果没有按照生成的key1=value&key2=value拼接的话会报错
	     */
	    String[] paramArr = new String[] { "jsapi_ticket=" + vo.getJsapiTicket(),
	            "timestamp=" + vo.getTimestamp(), "noncestr=" + vo.getNonceStr(), "url=" + vo.getUrl() };
	    Arrays.sort(paramArr);
	    // 将排序后的结果拼接成一个字符串
	    String content = paramArr[0].concat("&"+paramArr[1]).concat("&"+paramArr[2])
	            .concat("&"+paramArr[3]);
	    String gensignature = null;
	    try {
	        MessageDigest md = MessageDigest.getInstance("SHA-1");
	        // 对拼接后的字符串进行 sha1 加密
	        byte[] digest = md.digest(content.toString().getBytes());
	        gensignature = byteToStr(digest);
	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace();
	    }
	    // 将 sha1 加密后的字符串与 signature 进行对比
	    if (gensignature != null) {
	        return gensignature;// 返回signature
	    } else {
	        return "false";
	    }
	}
	 
	/**
	 * 将字节数组转换为十六进制字符串
	 *
	 * @param byteArray
	 * @return
	 */
	private static String byteToStr(byte[] byteArray) {
	    String strDigest = "";
	    for (int i = 0; i < byteArray.length; i++) {
	        strDigest += byteToHexStr(byteArray[i]);
	    }
	    return strDigest;
	}
	 
	/**
	 * 将字节转换为十六进制字符串
	 *
	 * @param mByte
	 * @return
	 */
	private static String byteToHexStr(byte mByte) {
	    char[] Digit = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A',
	            'B', 'C', 'D', 'E', 'F' };
	    char[] tempArr = new char[2];
	    tempArr[0] = Digit[(mByte >>> 4) & 0X0F];
	    tempArr[1] = Digit[mByte & 0X0F];
	    String s = new String(tempArr);
	    return s;
	}

}