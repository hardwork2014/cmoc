package com.xuequ.cmoc.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuequ.cmoc.common.RspResult;
import com.xuequ.cmoc.common.enums.StatusEnum;
import com.xuequ.cmoc.core.wechat.common.Constants;
import com.xuequ.cmoc.model.ActivityInfo;
import com.xuequ.cmoc.model.ImgGroup;
import com.xuequ.cmoc.model.MarineComment;
import com.xuequ.cmoc.model.WechatReceiveMessage;
import com.xuequ.cmoc.model.WechatUserInfo;
import com.xuequ.cmoc.page.Page;
import com.xuequ.cmoc.service.IActivityChildService;
import com.xuequ.cmoc.service.IActivityMarinesService;
import com.xuequ.cmoc.service.IActivityService;
import com.xuequ.cmoc.service.IMarineCommentService;
import com.xuequ.cmoc.service.IWechatMessageService;
import com.xuequ.cmoc.vo.ActivityQueryVO;
import com.xuequ.cmoc.vo.MarineLiveQueryVO;

@RequestMapping("live")
@Controller
public class LiveCenterController extends BaseController{
	
	private Logger logger = LoggerFactory.getLogger(LiveCenterController.class);
	
	@Autowired
	private IActivityService activityService;
	@Autowired
	private IActivityMarinesService activityMarinesService;
	@Autowired
	private IActivityChildService activityFamilyService;
	@Autowired
	private IWechatMessageService wechatMessageService;
	@Autowired
	private IMarineCommentService marineCommentService;

	@RequestMapping(value={"","/"})
	public String liveCenter(Model model) {
		return "live/liveCenter";
	}
	
	@RequestMapping("/json/activity/query")
	public @ResponseBody Object activityListQuery(ActivityQueryVO vo) {
		vo.setStartDate(new Date());
		Page<ActivityInfo> page = new Page<>();
		page.setPageNo(vo.getPage());
		page.setPageSize(vo.getRows());
		page.setParams(vo);
		List<ActivityInfo> list = activityService.selectListByParam(page);
		page.setResults(list);
		return page;
	}
	
	@RequestMapping("marine/list/{activityId}")
	public String marineList(Model model, @PathVariable Integer activityId) {
		model.addAttribute("activity", activityService.selectById(activityId));
		model.addAttribute("marines", activityMarinesService.selectListByActivityId(activityId));
		return "live/marinesList";
	}
	
	@RequestMapping("marine/test-detail/{marineId}")
	public String marineTestDetail(HttpServletResponse response, Model model, @PathVariable Integer marineId) {
		return marineDetail(response, model, marineId);
	}
	
	@RequestMapping("marine/detail/{marineId}")
	public String marineDetail(HttpServletResponse response, Model model, @PathVariable Integer marineId) {
		WechatUserInfo userInfo = getWechatUserInfo();
		model.addAttribute(Constants.WECHAT_USERINFO, userInfo);
		model.addAttribute("marine", activityMarinesService.selectById(marineId));
		model.addAttribute("familys", activityFamilyService.selectListByMarineId(marineId));
		int count = activityMarinesService.selectCountForModify(userInfo.getOpenid(), marineId);
		model.addAttribute("isDelete", count > 0 ? true : false);
		ImgGroup group = new ImgGroup();
		group.setPosition("1");
		group.setShelves(1);
		model.addAttribute("topBannerList",contentManageService.selectListByParam(group));
		return "live/marineDetail";
	}
	
	@RequestMapping("marine/resource/del")
	public @ResponseBody Object marineResourceDel(String msgId, Integer marineId) {
		try {
			if(StringUtils.isNotBlank(msgId) && marineId != null) {
				WechatUserInfo userInfo = getWechatUserInfo();
				int count = activityMarinesService.selectCountForModify(userInfo.getOpenid(), marineId);
				if(count == 0) {
					return new RspResult(StatusEnum.MARINE_RESOURCE_OPTION_NOACCESS);
				}
				WechatReceiveMessage message = new WechatReceiveMessage();
				message.setIsDelete("Y");
				message.setMsgId(msgId);
				wechatMessageService.updateByParam(message);
				return new RspResult(StatusEnum.SUCCESS);
			}
		} catch (Exception e) {
			logger.error("--marineResourceDel, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("marine/resource/query")
	public @ResponseBody Object marineImageQuery(MarineLiveQueryVO vo) {
		try {
			Page<WechatReceiveMessage> page = new Page<WechatReceiveMessage>();
			page.setPageNo(vo.getPage());
			page.setPageSize(vo.getRows());
			page.setParams(vo);
			List<WechatReceiveMessage> list = wechatMessageService.selectListByPage(page);
			page.setResults(list);
			return page;
		} catch (Exception e) {
			logger.error("--marineImageQuery, error={}", e);
		}
		return null;
	}
	
	@RequestMapping("marine/read")
	public @ResponseBody Object marineRead(Integer marineId) {
		return activityMarinesService.addMarineReadnum(marineId);
	}
	
	@RequestMapping("marine/comment")
	public @ResponseBody Object marineComment(MarineComment comment) {
		try {
			WechatUserInfo userInfo = getWechatUserInfo();
      		comment.setHeadUrl(userInfo.getHeadimgurl());
			comment.setNikeName(userInfo.getNickname());
			comment.setOpenid(userInfo.getOpenid());
			marineCommentService.insertMarineComment(comment);
			return new RspResult(StatusEnum.SUCCESS, userInfo);
		} catch (Exception e) {
			logger.error("--marineComment, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("marine/comment/query")
	public @ResponseBody Object marineCommentQuery(MarineLiveQueryVO vo) {
		try {
			Page<MarineComment> page = new Page<MarineComment>();
			page.setPageNo(vo.getPage());
			page.setPageSize(vo.getRows());
			page.setParams(vo);
			List<MarineComment> list = marineCommentService.selectListByPage(page);
			page.setResults(list);
			return page;
		} catch (Exception e) {
			logger.error("--marineImageQuery, error={}", e);
		}
		return null;
	}
	
	@RequestMapping("marine/stuimp")
	public @ResponseBody Object marineStuImp(Integer marineId) {
		return marineCommentService.selectStudentImpByMarineId(marineId);
	}
	
	@RequestMapping("marine/stuimp/add")
	public @ResponseBody Object marineStuImpAdd(Integer id) {
		return marineCommentService.addStuImpVotes(id);
	}
}
