package com.webserver.projecthub.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class FileDownloadUtil extends AbstractView {
	
	public FileDownloadUtil() {
		setContentType("application/download; charset=utf-8");
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		@SuppressWarnings("unchecked")
		Map<String, Object> fileInfo = (Map<String, Object>) model.get("fileInfo");
		
		String fileName = (String) fileInfo.get("fileName");
		String fileOriName = (String) fileInfo.get("fileOriName");
		String filePath = (String) fileInfo.get("path");
		
		File file = new File(filePath, fileName);
		
		response.setContentType(getContentType());
		response.setContentLength((int) file.length());
		
		String userAgent = request.getHeader("User-Agent");
		
		if (userAgent.indexOf("MSIE") > -1 || userAgent.indexOf("Trident") > -1) {
			fileOriName = URLEncoder.encode(fileOriName, "UTF-8").replaceAll("\\+", "%20");
		} else {
			fileOriName = new String(fileOriName.getBytes("UTF-8"),"8859_1");
		}
	
		response.setContentType(getContentType());
        response.setContentLength((int)file.length());
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileOriName + "\";");
		response.setHeader("Content-Transfer-Encoing", "binary");
		
		OutputStream out = response.getOutputStream();
		
		FileInputStream fis = null;
		

        try {
            
            fis = new FileInputStream(file);
            FileCopyUtils.copy(fis, out);
            
        } finally {
            
            if(fis != null) {
                fis.close();
            }
        }
        
        out.flush();
    }
}
		

