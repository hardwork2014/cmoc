package com.xuequ.cmoc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xuequ.cmoc.model.ChildSignInfo;

public interface ChildSignInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ChildSignInfo record);

    int insertSelective(ChildSignInfo record);

    ChildSignInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ChildSignInfo record);

    int updateByPrimaryKey(ChildSignInfo record);
    
    int selectHasChild(String childName, String emerMobile);
    
    List<ChildSignInfo> selectEffectListByProductId(Integer productId);
    
    ChildSignInfo selectByChildNameMobile(@Param("childName")String childName, 
    		@Param("emerMobile")String emerMobile);
    
    String selectFamilyNo(ChildSignInfo record);
}