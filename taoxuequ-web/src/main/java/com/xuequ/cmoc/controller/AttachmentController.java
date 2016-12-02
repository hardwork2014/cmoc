package com.xuequ.cmoc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.UUID;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xuequ.cmoc.common.Configuration;
import com.xuequ.cmoc.common.Const;
import com.xuequ.cmoc.common.RspResult;
import com.xuequ.cmoc.common.enums.ImgTypeEnum;
import com.xuequ.cmoc.common.enums.ResourcePathEnum;
import com.xuequ.cmoc.common.enums.StatusEnum;
import com.xuequ.cmoc.model.ActivityFamily;
import com.xuequ.cmoc.model.ActivityMarines;
import com.xuequ.cmoc.service.IActivityFamilyService;
import com.xuequ.cmoc.service.IActivityMarinesService;
import com.xuequ.cmoc.service.IActivityService;
import com.xuequ.cmoc.utils.DateUtil;
import com.xuequ.cmoc.utils.FileUtils;
import com.xuequ.cmoc.utils.ZTRuntimeException;
import com.xuequ.cmoc.vo.AttachmentUploadVO;

@RequestMapping("attachment")
@Controller
public class AttachmentController {
	
	@Autowired
	private IActivityMarinesService activityMarinesService;
	@Autowired
	private IActivityFamilyService activityFamilyService;
	@Autowired
	private IActivityService activityService;
	
	@RequestMapping("activity/upload/img")
	@ResponseBody Object uploadImg(AttachmentUploadVO vo, 
			@RequestParam(value="files") MultipartFile buildInfo) {
		String resultUrl = null;
		if(ImgTypeEnum.MARINE.getCode().equals(vo.getType())) {
			ActivityMarines marines = activityMarinesService.selectByPrimaryKey(vo.getResourceId());
			resultUrl = imgUpload(marines.getActivityId(), vo.getResourceId(), 2, buildInfo);
		}else if(ImgTypeEnum.MEMBER.getCode().equals(vo.getType())) {
			ActivityFamily family = activityFamilyService.selectByPrimaryKey(vo.getResourceId());
			resultUrl = imgUpload(family.getActivityId(), vo.getResourceId(), 3, buildInfo);
		}else if(ImgTypeEnum.ACTIVITY.getCode().equals(vo.getType())) {
			resultUrl = imgUpload(null, vo.getResourceId(), 1, buildInfo);
		}
		return new RspResult(StatusEnum.SUCCESS, resultUrl);
	}
	
	/**
	 * 图片上传
	 * @auther 胡启萌
	 * @Date 2016年11月23日
	 * @param activityId 活动id
	 * @param resourceId 要更新图片资源Id
	 * @param type 图片类型 1活动 2战队 3队员
	 * @param buildInfo
	 */
	private String imgUpload(Integer activityId, Integer resourceId, 
			int type, MultipartFile buildInfo) {
		String path = ImgTypeEnum.ACTIVITY.getCode() + Const.SEPARATOR + 
				DateUtil.getYear(new Date()) + 
				(activityId != null ? Const.SEPARATOR + activityId : "");
		String imgUrl = null;
		imgUrl = writeFile(path, buildInfo);
		if(type == 1) {
			activityService.updateActivityImg(imgUrl, resourceId);
		}else if(type == 2) {
			activityMarinesService.updateMarineImg(imgUrl, resourceId);
		}else if(type == 3) {
			activityFamilyService.updateFamilyImg(imgUrl, resourceId);
		}
		return imgUrl;
	}
	
	public String writeFile(String path, MultipartFile buildInfo) {
		path = ResourcePathEnum.IMGE.getValue() + Const.SEPARATOR + path;
		String relativeAttachmentPath = Const.rootPath + path;
        createDir(relativeAttachmentPath);
        //数据库保存的文件路径
        String realFileName = UUID.randomUUID().toString();
        String extName = FileUtils.getExtName(buildInfo.getOriginalFilename());
        realFileName += Const.DOT + extName;

        // 文件保存磁盘的完整路径
        String attachmentURL = relativeAttachmentPath + Const.SEPARATOR + realFileName;
        try {
            OutputStream os = new FileOutputStream(attachmentURL);
            IOUtils.copy(buildInfo.getInputStream(), os);
        }
        catch (Exception e) {
            throw new ZTRuntimeException(String.format("创建文件路径[%s]出错", relativeAttachmentPath), e);
        }
        String dataMemoryURL = path + Const.SEPARATOR + realFileName;
        if(Configuration.getInstance().getEnv().equals("development")) {
        	dataMemoryURL = extName + Const.SEPARATOR + dataMemoryURL;
        	dataMemoryURL = dataMemoryURL.replaceAll(Const.SEPARATOR, Const.REPLACE_SEPARATOR);
        }
        return dataMemoryURL;
	}
	
	private static void createDir(String uploadPath) {
        File file = new File(uploadPath);
        // 如果该文件目录不存在，则创建一个新的目录
        if (!file.exists()) {
            file.mkdirs();
        }
    }
}
