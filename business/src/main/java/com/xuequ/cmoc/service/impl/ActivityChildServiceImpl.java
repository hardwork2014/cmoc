package com.xuequ.cmoc.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xuequ.cmoc.dao.ActivityChildMapper;
import com.xuequ.cmoc.dao.ChildSignInfoMapper;
import com.xuequ.cmoc.model.ActivityChild;
import com.xuequ.cmoc.model.ChildSignInfo;
import com.xuequ.cmoc.page.Page;
import com.xuequ.cmoc.service.IActivityChildService;
import com.xuequ.cmoc.view.ActivityChildView;

@Service("activityFamilyService")
public class ActivityChildServiceImpl implements IActivityChildService {
	
	@Autowired
	private ActivityChildMapper activityChildMapper;
	@Autowired
	private ChildSignInfoMapper childSignInfoMapper;

	@Override
	public List<ActivityChildView> selectListByPage(Page<ActivityChildView> page) {
		return activityChildMapper.selectListByPage(page);
	}

	@Override
	public List<ActivityChildView> selectListByMarineId(Integer marineId) {
		return activityChildMapper.selectListByMarineId(marineId);
	}

	@Override
	public int updateFamilyImg(String imgUrl, Integer id) {
		ActivityChild child = new ActivityChild();
		child.setChildImg(imgUrl);
		child.setId(id);
		return activityChildMapper.updateByPrimaryKeySelective(child);
	}

	@Override
	public int addAndUpdateChild(ActivityChildView view) {
		if(StringUtils.isNotBlank(view.getChildName())) {
			ChildSignInfo childSignInfo = new ChildSignInfo();
			childSignInfo.setId(view.getChildId());
			childSignInfo.setChildName(view.getChildName());
			childSignInfo.setChildAge(view.getChildAge());
			childSignInfo.setChildSex(view.getChildSex());
			childSignInfo.setChildIdcard(view.getChildIdcard());
			childSignInfo.setEmerMobile(view.getEmerMobile());
			childSignInfo.setEmerName(view.getEmerName());
			childSignInfo.setUpdateTime(new Date());
			childSignInfoMapper.updateByPrimaryKeySelective(childSignInfo);
		}
		view.setUpdateTime(new Date());
		return activityChildMapper.updateByPrimaryKeySelective(view);
	}

	@Override
	public ActivityChildView selectById(Integer id) {
		return activityChildMapper.selectById(id);
	}

	@Override
	public ActivityChild selectByPrimaryKey(Integer id) {
		return activityChildMapper.selectByPrimaryKey(id);
	}

	@Override
	public ActivityChildView selectByChildId(Integer childId) {
		return activityChildMapper.selectChildByChildId(childId);
	}

	@Override
	public int updateActivityByChildId(ActivityChild child) {
		return activityChildMapper.updateByPrimaryKeySelective(child);
	}



}
