package com.xuequ.cmoc.utils;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.xuequ.cmoc.common.Configuration;
import com.xuequ.cmoc.common.Const;
import com.xuequ.cmoc.common.enums.MimeTypeEnum;
import com.xuequ.cmoc.common.enums.ResourcePathEnum;

/**
 * 文件相关工具类
 */
public final class FileUtils {
    private static final Logger LOG = LoggerFactory.getLogger(FileUtils.class);

    private FileUtils() {
    }

    /**
     * 获取指定文件的扩展名
     *
     * @param fileName 文件全名
     * @return 文件的扩展名
     */
    public static String getExtName(String fileName) {
        if (StringUtils.isBlank(fileName)) {
            return null;
        }

        int pos = fileName.lastIndexOf('.');
        if (pos > 0 && pos != fileName.length() - 1) {
            return fileName.substring(pos + 1).toLowerCase();
        }
        return null;
    }
    
    public static void main(String[] args) {
		System.out.println(getFileNameExceptExt("小号.jpg"));
	}

    /**
     * 获取指定文件的名称,不包含扩展名
     *
     * @param fileName 文件全名
     * @return 不包含扩展名的文件名
     */
    public static String getFileNameExceptExt(String fileName) {
        if (StringUtils.isBlank(fileName)) {
            return "";
        }
        int pos = fileName.lastIndexOf('.');
        if (pos >= 0) {
            return fileName.substring(0, pos);
        }
        else {
            return fileName;
        }
    }

    /**
     * 删除文件
     *
     * @param atachmentUrl 文件的路径
     * @return 是否删除成功
     */
    public static boolean deleteFolder(String atachmentUrl) {
        boolean flag = false;
        File file = new File(atachmentUrl);
        // 判断目录或文件是否存在
        if (!file.exists()) {
            // 不存在返回false
            return flag;
        }
        else {
            // 判断是否为文件
            if (file.isFile()) {
                // 为文件时调用删除文件方法
                return deleteFile(atachmentUrl);
            }
            else {
                // 为目录时调用删除目录方法
                return deleteDirectory(atachmentUrl);
            }
        }
    }

    private static boolean deleteDirectory(String sPath) {
        // 如果sPath不以文件分隔符结尾，自动添加文件分隔符
        if (!sPath.endsWith(File.separator)) {
            sPath = sPath + File.separator;
        }
        File dirFile = new File(sPath);
        // 如果dir对应的文件不存在，或者不是一个目录，则退出
        if (!dirFile.exists() || !dirFile.isDirectory()) {
            return false;
        }
        boolean flag = true;
        // 删除文件夹下的所有文件(包括子目录)
        File[] files = dirFile.listFiles();
        for (int i = 0; i < files.length; i++) {
            // 删除子文件
            if (files[i].isFile()) {
                flag = deleteFile(files[i].getAbsolutePath());
            }
            else {
                // 删除子目录
                flag = deleteDirectory(files[i].getAbsolutePath());
            }
            if (!flag) {
                return false;
            }
        }
        // 删除当前目录
        return dirFile.delete();
    }

    private static boolean deleteFile(String sPath) {
        boolean flag = false;
        File file = new File(sPath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists()) {
            flag = file.delete();
        }
        return flag;
    }

    /**
     * 复制文件
     *
     * @param srcFile 源文件路径
     * @param destFile 目标文件路径
     * @throws IOException 复制文件时可能抛出IO异常
     */
    public static void copy(String srcFile, String destFile) throws IOException {
        FileInputStream fis = null;
        FileOutputStream fos = null;

        try {
            fis = new FileInputStream(srcFile);
            fos = new FileOutputStream(destFile);
            IOUtils.copy(fis, fos);
        }
        finally {
            if (fis != null) {
                try {
                    fis.close();
                }
                catch (IOException e) {
                    LOG.debug(e.getMessage(), e);
                }
            }
            if (fos != null) {
                try {
                    fos.close();
                }
                catch (IOException e) {
                    LOG.debug(e.getMessage(), e);
                }
            }

        }

    }

    /**
     * 给定json数据（用list包装）、文件名、文件路径，生成json压缩文件
     * 
     * @param data json数据
     * @param filePath 文件路径
     * @param fileName 文件名
     */
    public static void createGZipFile(List data, String filePath, String fileName) {
        InputStream in = null;
        OutputStream os = null;
        GZIPOutputStream gout = null;
        try {
            File fileDir = new File(filePath);
            if (!fileDir.exists()) {
                fileDir.mkdirs();
            }
            os = new FileOutputStream(String.format("%s%s%s.json", filePath, File.separator, fileName));
            gout = new GZIPOutputStream(os);
            in = new ByteArrayInputStream(FastJsonUtils.convertObject2JSONString(data).getBytes("UTF-8"));
            IOUtils.copy(in, gout);
        }
        catch (Exception e) {
            LOG.error(String.format("生成JSON压缩文件失败:文件路径-%s，文件名称-%s!", filePath, fileName), e);
        }
        finally {
            IOUtils.closeQuietly(in);
            IOUtils.closeQuietly(gout);
            IOUtils.closeQuietly(os);
        }
    }

    public static boolean isImage(String extName) {
        if ("gif".equalsIgnoreCase(extName) || "jpg".equalsIgnoreCase(extName) || "jpeg".equalsIgnoreCase(extName)
                || "bmp".equalsIgnoreCase(extName) || "png".equalsIgnoreCase(extName))
            return true;
        return false;
    }
    
    public static String writeFile(String soursePath, String mkdir, String id){
    	try {
    		String resourceType = ResourcePathEnum.IMGE.getValue() + mkdir;
    		String relativeAttachmentPath = Const.rootPath + resourceType;
    		createDir(relativeAttachmentPath);
    		URL url = new URL(soursePath);
    		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
    		conn.setRequestMethod("GET");
    		conn.setDoInput(true);
    		String contentType = conn.getHeaderField("Content-Type");
    		if(contentType.indexOf(";") != -1) {
    			contentType = contentType.substring(0, contentType.indexOf(";"));
    		}
    		String extName = MimeTypeEnum.getKey(contentType);
    		String realFileName = id + Const.DOT + extName;
    		// 文件保存磁盘的完整路径
            String attachmentURL = relativeAttachmentPath + Const.SEPARATOR + realFileName;
            BufferedInputStream bis = new BufferedInputStream(conn.getInputStream());  
            FileOutputStream fos = new FileOutputStream(new File(attachmentURL));  
            byte[] buf = new byte[8096];  
            int size = 0;  
            while ((size = bis.read(buf)) != -1)  
                fos.write(buf, 0, size);  
            fos.close();  
            bis.close();  
            conn.disconnect(); 
    		return resourceType + Const.SEPARATOR + realFileName;
		} catch (Exception e) {
			LOG.error("创建文件路径出错, error={}", e);
		}
		return null;
    }
    
    public static String writeFile(String path, String imgName, MultipartFile buildInfo) {
		path = ResourcePathEnum.IMGE.getValue() + Const.SEPARATOR + path;
		String relativeAttachmentPath = Const.rootPath + path;
        createDir(relativeAttachmentPath);
        //数据库保存的文件路径
        String realFileName = imgName == null ? UUID.randomUUID().toString() : imgName;
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
	
	public static void createDir(String uploadPath) {
        File file = new File(uploadPath);
        // 如果该文件目录不存在，则创建一个新的目录
        if (!file.exists()) {
            file.mkdirs();
        }
    }
}
