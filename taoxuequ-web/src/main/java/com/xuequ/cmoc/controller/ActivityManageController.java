package com.xuequ.cmoc.controller;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xuequ.cmoc.common.Constants;
import com.xuequ.cmoc.common.RspResult;
import com.xuequ.cmoc.common.enums.StatusEnum;
import com.xuequ.cmoc.model.ActivityFamily;
import com.xuequ.cmoc.model.ActivityMarines;
import com.xuequ.cmoc.model.Grid;
import com.xuequ.cmoc.model.SysUser;
import com.xuequ.cmoc.page.Page;
import com.xuequ.cmoc.reqVo.ActivityNamelistVO;
import com.xuequ.cmoc.service.IActivityFamilyService;
import com.xuequ.cmoc.service.IActivityHmService;
import com.xuequ.cmoc.service.IActivityMarinesService;
import com.xuequ.cmoc.service.IActivityService;
import com.xuequ.cmoc.service.IActivityTeacherService;
import com.xuequ.cmoc.utils.CellUtil;
import com.xuequ.cmoc.view.ActivityFamilyView;
import com.xuequ.cmoc.view.ActivityHmSignView;
import com.xuequ.cmoc.view.ActivityInfoView;
import com.xuequ.cmoc.view.ActivityMarinesView;
import com.xuequ.cmoc.view.ActivityTeacherView;
import com.xuequ.cmoc.vo.ActivityQueryVO;
import com.xuequ.cmoc.vo.ActivitySubmitVO;

/**
 * 活动管理
 * @author 胡启萌
 * @Date 2016年11月14日
 *
 */
@RequestMapping("activity")
@Controller
public class ActivityManageController extends BaseController{
	
	private Logger logger = LoggerFactory.getLogger(ActivityManageController.class);

	@Autowired
	private IActivityService activityService;
	@Autowired
	private IActivityFamilyService activityFamilyService;
	@Autowired
	private IActivityMarinesService activityMarinesService;
	@Autowired
	private IActivityHmService activityHmService;
	@Autowired
	private IActivityTeacherService activityTeacherService;
	
	/**
	 * 活动管理页
	 * @auther 胡启萌
	 * @Date 2016年11月14日
	 * @return
	 */
	@RequestMapping("manage")
	public String manage() {
		return "activity/index";
	}
	
	@RequestMapping("namelist")
	public String namelist() {
		return "activity/namelist";
	}
	
	@RequestMapping("marines")
	public String marines() {
		return "activity/marines";
	}
	
	@RequestMapping("hm") 
	public String activityHm() {
		return "activity/hm";
	}
	
	@RequestMapping("teacher")
	public String activityTeacher() {
		return "activity/teacher";
	}
	
	/**
	 * 活动查询
	 * @auther 胡启萌
	 * @Date 2016年11月14日
	 * @return
	 */
	@RequestMapping("json/query")
	@ResponseBody Object manageQuery(ActivityQueryVO vo) {
		Page<ActivityInfoView> page = new Page<ActivityInfoView>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("activityType", vo.getActivityType());
		paramMap.put("activityName", vo.getActivityName());
		paramMap.put("startDate", vo.getStartDate());
		paramMap.put("endDate", vo.getEndDate());
		Grid grid = new Grid();
		page.setParams(paramMap);
		page.setPageNo(vo.getPage());
		page.setPageSize(vo.getRows());
		List<ActivityInfoView> list = activityService.selectListByPage(page);
		grid.setRows(list);
		grid.setTotal(page.getTotalRecord());
		return grid;
	}
	
	@RequestMapping("json/queryById")
	@ResponseBody Object queryById(@RequestParam("id") Integer id){
		return activityService.selectById(id);
	}
	
	@RequestMapping("json/addUpdate")
	@ResponseBody Object addUpdate(ActivitySubmitVO vo){
		try {
			SysUser sysUser = (SysUser) session.getAttribute(Constants.APP_USER);
			activityService.addAndUpdateActivity(vo, sysUser);
			return new RspResult(StatusEnum.SUCCESS);
		} catch (Exception e) {
			logger.error("----addUpdate, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	/**
	 * 学生用户导入
	 * @auther 胡启萌
	 * @Date 2016年11月14日
	 * @return
	 */
	@RequestMapping("namelist/import")
	@ResponseBody Object namelistImport(@RequestParam(value="id") Integer id, 
			@RequestParam(value="files",required=false) MultipartFile buildInfo) {
		try {
			return saveBuildInfo(buildInfo, id);
		} catch (Exception e) {
			logger.error("--namelistImport, error={}", e);
		}
		return new RspResult(StatusEnum.TEMPLATE_ERROR);
	}
	
	@RequestMapping("json/namelist/query")
	@ResponseBody Object namelistQuery(ActivityQueryVO vo) {
		Page<ActivityFamilyView> page = new Page<ActivityFamilyView>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("activityId", vo.getActivityId());
		paramMap.put("childName", vo.getChildName());
		paramMap.put("activityType", vo.getActivityType());
		paramMap.put("activityName", vo.getActivityName());
		paramMap.put("startDate", vo.getStartDate());
		paramMap.put("endDate", vo.getEndDate());
		Grid grid = new Grid();
		page.setParams(paramMap);
		page.setPageNo(vo.getPage());
		page.setPageSize(vo.getRows());
		List<ActivityFamilyView> list = activityFamilyService.selectListByPage(page);
		grid.setRows(list);
		grid.setTotal(page.getTotalRecord());
		return grid;
	}
	
	@RequestMapping("json/marines/query")
	@ResponseBody Object marinesQuery(ActivityQueryVO vo) {
		Page<ActivityMarinesView> page = new Page<ActivityMarinesView>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("activityId", vo.getActivityId());
		paramMap.put("marineName", vo.getMarineName());
		paramMap.put("activityType", vo.getActivityType());
		paramMap.put("activityName", vo.getActivityName());
		paramMap.put("startDate", vo.getStartDate());
		paramMap.put("endDate", vo.getEndDate());
		Grid grid = new Grid();
		page.setParams(paramMap);
		page.setPageNo(vo.getPage());
		page.setPageSize(vo.getRows());
		List<ActivityMarinesView> list = activityMarinesService.selectListByPage(page);
		grid.setRows(list);
		grid.setTotal(page.getTotalRecord());
		return grid;
	}
	
	@RequestMapping("json/marines/queryById")
	public @ResponseBody Object marinesQueryById(@RequestParam("id")Integer id) {
		return activityMarinesService.selectById(id);
	}
	
	public RspResult saveBuildInfo(MultipartFile buildInfo, Integer activityId) throws Exception{
    	SysUser sysUser = (SysUser) session.getAttribute(Constants.APP_USER);
    	// 创建一个FileInputStream 文件输入流
        InputStream inputStream = buildInfo.getInputStream();
    	// 创建对Excel工作簿文件的引用
        Workbook wookbook = null;
        String filename = buildInfo.getOriginalFilename();
        String fileType = filename.substring(filename.lastIndexOf(".") + 1,
        		filename.length());
        if (fileType.equals("xls")) {
        	try{
        		wookbook = new HSSFWorkbook(inputStream);
        	}catch(Exception e){
        		wookbook = null;
           	 	wookbook = new XSSFWorkbook(inputStream);
        	}
        }else{
       	 	wookbook = new XSSFWorkbook(inputStream);
        }
        // 在Excel文档中，第一张工作表的缺省索引是0
        Sheet sheet = wookbook.getSheetAt(0);
        int coloumNum=sheet.getRow(0).getPhysicalNumberOfCells();// 获取总列数
        int rowNum=sheet.getPhysicalNumberOfRows();//获得总行数
        if(rowNum <= 1) {
        	return new RspResult(StatusEnum.TEMPLATE_DATA_NULL);
        }
        List<ActivityNamelistVO> list = new ArrayList<>();
        // 遍历行 从第三行开始遍历
        for (int i = 1; i < rowNum; i++) {
        	// 读取左上端单元格
            Row row = sheet.getRow(i);
            // 行不为空
            if (row != null) {
            	ActivityNamelistVO namelistVO = new ActivityNamelistVO();
            	namelistVO.setActivityId(activityId);
            	for(int j = 0; j < coloumNum; j ++) {
            		Cell cell = row.getCell((short)j);
            		if(cell != null) {
            			String val = CellUtil.getCellValue(cell);
            			if(j == 0) namelistVO.setMarineName(val.trim());
            			else if(j == 1) namelistVO.setChildName(val.trim());
            			else if(j == 2) namelistVO.setFatherName(val.trim());
            			else if(j == 3) namelistVO.setFatherMobile(val.trim());
            			else if(j == 4) namelistVO.setMotherName(val.trim()); 
            			else if(j == 5) namelistVO.setMotherMobile(val.trim());
            			else if(j == 6) namelistVO.setChildTitle(val.trim());
            			else if(j == 7) namelistVO.setTeatherName(val.trim());
            			else if(j == 8) namelistVO.setTeacherMobile(val.trim());
            			else if(j == 9) namelistVO.setHmName(val.trim());
            			else if(j == 10) namelistVO.setHmMobile(val.trim());
            		}
            	}
            	list.add(namelistVO);
            }
        }
        return activityService.addImportActivityNamelist(list, sysUser); 
    }
	
	@RequestMapping("json/marines/addUpdate")
	public @ResponseBody Object marinesAddUpdate(ActivityMarines vo){
		try {
			activityMarinesService.addUpdateMarines(vo);
			return new RspResult(StatusEnum.SUCCESS);
		} catch (Exception e) {
			logger.error("--marinesAddUpdate, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("json/namelist/queryById")
	public @ResponseBody Object namelistQueryById(@RequestParam("id")Integer id) {
		return activityFamilyService.selectById(id);
	}
		
	@RequestMapping("json/namelist/addUpdate")
	public @ResponseBody Object familyAddUpdate(ActivityFamily vo) {
		try {
			activityFamilyService.addAndUpdateFamily(vo);
			return new RspResult(StatusEnum.SUCCESS);
		} catch (Exception e) {
			logger.error("--familyAddUpdate, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	
	
	@RequestMapping("/json/hm/query")
	public @ResponseBody Object activityHmQuery(ActivityQueryVO vo) {
		Page<ActivityHmSignView> page = new Page<ActivityHmSignView>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("activityId", vo.getActivityId());
		paramMap.put("marineName", vo.getMarineName());
		paramMap.put("activityType", vo.getActivityType());
		paramMap.put("activityName", vo.getActivityName());
		paramMap.put("startDate", vo.getStartDate());
		paramMap.put("endDate", vo.getEndDate());
		Grid grid = new Grid();
		page.setParams(paramMap);
		page.setPageNo(vo.getPage());
		page.setPageSize(vo.getRows());
		List<ActivityHmSignView> list = activityHmService.selectListByPage(page);
		grid.setRows(list);
		grid.setTotal(page.getTotalRecord());
		return grid;
	}
	
	@RequestMapping("/json/teacher/query")
	public @ResponseBody Object activityTeacherQuery(ActivityQueryVO vo) {
		Page<ActivityTeacherView> page = new Page<ActivityTeacherView>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("activityId", vo.getActivityId());
		paramMap.put("marineName", vo.getMarineName());
		paramMap.put("activityType", vo.getActivityType());
		paramMap.put("activityName", vo.getActivityName());
		paramMap.put("startDate", vo.getStartDate());
		paramMap.put("endDate", vo.getEndDate());
		Grid grid = new Grid();
		page.setParams(paramMap);
		page.setPageNo(vo.getPage());
		page.setPageSize(vo.getRows());
		List<ActivityTeacherView> list = activityTeacherService.selectListByPage(page);
		grid.setRows(list);
		grid.setTotal(page.getTotalRecord());
		return grid;
	}
}
