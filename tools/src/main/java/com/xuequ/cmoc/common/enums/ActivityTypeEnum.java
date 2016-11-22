package com.xuequ.cmoc.common.enums;

public enum ActivityTypeEnum {
	activity_type_1("1", "亲子活动"),
	activity_type_2("2", "城市体验");
	
	private final String code;
	
	private final String desc;
	
	private ActivityTypeEnum(String code, String desc) {
		this.code = code;
		this.desc = desc;
	}
	
	public static String getDesc(String code) {
		for(ActivityTypeEnum activityType : ActivityTypeEnum.values()) {
			if(activityType.getCode().equals(code)) {
				return activityType.getDesc();
			}
		}
		return null;
	}

	public String getCode() {
		return code;
	}

	public String getDesc() {
		return desc;
	}
	
	
}
