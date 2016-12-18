package com.xuequ.cmoc.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xuequ.cmoc.common.Constants;
import com.xuequ.cmoc.common.RspResult;
import com.xuequ.cmoc.common.enums.OrderStatusEnum;
import com.xuequ.cmoc.common.enums.StatusEnum;
import com.xuequ.cmoc.model.ChildSignInfo;
import com.xuequ.cmoc.model.CourseInfo;
import com.xuequ.cmoc.model.Grid;
import com.xuequ.cmoc.model.SysUser;
import com.xuequ.cmoc.page.Page;
import com.xuequ.cmoc.service.ICourseService;
import com.xuequ.cmoc.utils.BeanUtils;
import com.xuequ.cmoc.utils.ExcelExportUtil;
import com.xuequ.cmoc.utils.ExportSetInfoUtil;
import com.xuequ.cmoc.view.ChildSignView;
import com.xuequ.cmoc.view.CourseBuyerView;
import com.xuequ.cmoc.vo.BuyerQueryVO;
import com.xuequ.cmoc.vo.ChildSignReportVO;
import com.xuequ.cmoc.vo.CourseQueryVO;
import com.xuequ.cmoc.vo.CourseSubmitVO;

@RequestMapping("course")
@Controller
public class CourseManageController extends BaseController{
	
	private Logger logger = LoggerFactory.getLogger(CourseManageController.class);

	@Autowired
	private ICourseService courseService;
	
	@RequestMapping("manage")
	public String manage() {
		return "course/manage";
	}
	
	@RequestMapping("sign/record")
	public String buyRecord(){
		return "course/signRecord";
	}
	
	@RequestMapping("json/sign/list")
	@ResponseBody Object courseSignList(BuyerQueryVO vo) {
		try {
			Page<ChildSignView> page = new Page<>();
			page.setPageNo(vo.getPage());
			page.setPageSize(vo.getRows());
			page.setParams(vo);
			List<ChildSignView> list = courseService.selectCourseSignByPage(page);
			Grid grid = new Grid();
			grid.setRows(list);
			grid.setTotal(page.getTotalRecord());
			return grid;
		} catch (Exception e) {
			logger.error("--courseSignList, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("json/list/import")
	ModelAndView jsonListImport(BuyerQueryVO vo) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			Page<ChildSignView> page = new Page<>();
			page.setPageNo(vo.getPage());
			page.setPageSize(Integer.MAX_VALUE-1);
			page.setParams(vo);
			List<ChildSignView> signList = courseService.selectCourseSignByPage(page);
			List<ChildSignReportVO> list = BeanUtils.copyAs(signList, ChildSignReportVO.class);
			//数据源
			LinkedHashMap<String, List> map = new LinkedHashMap<String, List>();
			String title="课程网上预约报名表";
			map.put(title, list);
			
			//标题  和  标题变量
		    List<String[]> headNames = new ArrayList<String[]>();
		    headNames.add(new String[] { "课程名称","紧急联系人", "联系电话", "小孩姓名", "小孩身份证号","小孩性别","小孩年龄","有无疾病",
		    		"疾病描述","报名时间"});
		    List<String[]> fieldNames = new ArrayList<String[]>();
		    fieldNames.add(new String[] { "courseName","emerName", "emerMobile", "childName", "childIdcard", "childSex","childAge","isDisease",
		    		"diseaseDesc","signTime"});
		    
		    //excel生成帮助类
		    List<Integer[]> columnFormat=new ArrayList<Integer[]>();
		    Integer [] format=new Integer[22];
		    columnFormat.add(format);
		    
		    String [] titles=new String[] {title};
		    //excel生成帮助类
		    ExportSetInfoUtil setInfo = new ExportSetInfoUtil(map,titles,headNames,fieldNames,columnFormat);
		    request.setAttribute("exportDatas", setInfo);
		    
		    //生成
			modelAndView=new ModelAndView(new ExcelExportUtil(title+".xls",""));
		} catch (Exception e) {
			logger.error("--jsonListQuery, error={}", e);
		}
		return modelAndView;
	}
	
	@RequestMapping("json/buyRecord/list")
	@ResponseBody Object buyRecordList(BuyerQueryVO vo) {
		try {
			Page<CourseBuyerView> page = new Page<>();
			vo.setOrderStatus(OrderStatusEnum.SUCCESS.getCode());
			page.setPageNo(vo.getPage());
			page.setPageSize(vo.getRows());
			page.setParams(vo);
			List<CourseBuyerView> list = courseService.selectBuyRecordByPage(page);
			Grid grid = new Grid();
			grid.setRows(list);
			grid.setTotal(page.getTotalRecord());
			return grid;
		} catch (Exception e) {
			logger.error("--buyRecordList, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("json/list/query")
	@ResponseBody Object jsonListQuery(CourseQueryVO vo) {
		try {
			Page<CourseInfo> page = new Page<>();
			page.setPageNo(vo.getPage());
			page.setPageSize(vo.getRows());
			page.setParams(vo);
			List<CourseInfo> list = courseService.selectListByPage(page);
			Grid grid = new Grid();
			grid.setRows(list);
			grid.setTotal(page.getTotalRecord());
			return grid;
		} catch (Exception e) {
			logger.error("--jsonListQuery, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	
	@RequestMapping("json/addUpdate")
	@ResponseBody Object addUpdate(CourseSubmitVO vo) {
		try {
			SysUser user = (SysUser) session.getAttribute(Constants.APP_USER);
			courseService.addAndUpdateCourse(vo, user);
			return new RspResult(StatusEnum.SUCCESS);
		} catch (Exception e) {
			logger.error("--addUpdate, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("json/edit")
	public String edit(Model model) {
		String courseId = request.getParameter("id");
		model.addAttribute("courseId", courseId);
		return "course/edit";
	}
	
	@RequestMapping("json/detail/query")
	@ResponseBody Object courseDetail(Integer courseId) {
		return courseService.selectByPrimaryKey(courseId);
	}
	
	@RequestMapping("json/edit/shelves")
	@ResponseBody Object editShelves(Integer shelves, Integer id) {
		try {
			courseService.updateShelves(shelves, id);
			return new RspResult(StatusEnum.SUCCESS);
		} catch (Exception e) {
			logger.error("--editShelves, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("json/course/compent")
	@ResponseBody Object courseCompent() {
		List<CourseInfo> list = courseService.selectShelvesList();
		StringBuffer sb = new StringBuffer();
		for(CourseInfo info : list) {
			sb.append("<option value=\"" + info.getId() + "\">" + info.getCourseName() + "</option>");
		}
		return sb.toString();
	}
	
	@RequestMapping("json/sign/update")
	@ResponseBody Object signUpdate(ChildSignInfo vo) {
		try {
			courseService.updateChildSignInfo(vo);
			return new RspResult(StatusEnum.SUCCESS);
		} catch (Exception e) {
			logger.error("--signUpdate, error={}", e);
		}
		return new RspResult(StatusEnum.FAIL);
	}
	
	@RequestMapping("sign/print/{id}")
	public String signPrint(Model model, @PathVariable Integer id) {
		model.addAttribute("signInfo", courseService.selectChildSignById(id));
		return "course/signPrint";
	}
}
