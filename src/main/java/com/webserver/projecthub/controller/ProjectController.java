package com.webserver.projecthub.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.webserver.projecthub.service.ContentService;
import com.webserver.projecthub.service.FileService;
import com.webserver.projecthub.service.ProjectService;
import com.webserver.projecthub.vo.Content;
import com.webserver.projecthub.vo.Files;
import com.webserver.projecthub.vo.Project;

@Controller
@RequestMapping(value ="/project")
public class ProjectController {
	
	@Autowired
	ProjectService projectservice;
	
	@Autowired
	ContentService contentservice;
	
	@Autowired
	FileService fileservice;
	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String projectList(Model model, HttpSession session) {
		String userId = session.getAttribute("loginId").toString();
		model.addAttribute("projectList", projectservice.projectList(userId));

		return "project/main";
	}
	

	// project 생성 화면
	@RequestMapping(value = "/insertView", method = RequestMethod.GET)
	public String insert(HttpSession session) {
		
		return "project/insert";
	}

	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertProject(Project project, HttpSession session) {
		System.out.println(session.getAttribute("loginId"));
		int result = projectservice.insertProject(project);
		if(result == 1) {
			return "redirect:/project";
		}else {
			return "project/insert";
		}
	}

	@RequestMapping(value = "/delete/{no}", method = RequestMethod.GET)
	public String deleteProject(@PathVariable("no") int no){
		int result = projectservice.deleteProjcet(no);
		if(result == 1 ) {
			System.out.println("project 삭제 성공");
		}else {
			System.out.println("project 삭제 실패");
		}
		
		return "redirect:/project";
	}
	
	@RequestMapping(value = "/detail/{projectNo}", method = RequestMethod.GET)
	public String content(@PathVariable("projectNo") int projectNo,Model model, HttpSession session) throws Exception {
		model.addAttribute("sessionId", session.getAttribute("loginId"));
		model.addAttribute("projectNo", projectNo);
		model.addAttribute("project", projectservice.project(projectNo));
		model.addAttribute("websiteList", contentservice.websiteList(projectNo));
		model.addAttribute("memoList", contentservice.memoList(projectNo));
		model.addAttribute("fileList", fileservice.fileList(projectNo));
		return "content/main";
	}
	
	@RequestMapping(value = "/detail/insertwebView/{projectNo}", method = RequestMethod.GET)
	public String insertwebView(@PathVariable("projectNo") int projectNo, Model model) {
		model.addAttribute("projectNo", projectNo);
		return "content/insertweb";
	}
	
	@RequestMapping(value = "/detail/insertweb/{projectNo}", method = RequestMethod.POST)
	public String insertWeb(@PathVariable("projectNo") int projectNo,Content content) {
		Content con = new Content();
		String url = content.getUrl();
		String[] iurl;
		String memo = content.getMemo();
		String transUrl = "";
		if(url.startsWith("www")) {
			iurl = url.split("/");
			transUrl = "https://" + iurl[0];
		}else {
			iurl = url.split("/");
			transUrl = iurl[0] + "//" + iurl[2];
		}
		con.setProjectNo(projectNo);
		con.setUrl(url);
		con.setMemo(memo);
		con.setTransUrl(transUrl);
	
		
		int result = contentservice.insertWebsite(con);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect: ../" + projectNo;
		}
	}
	
	@RequestMapping(value = "/detail/insertmemoView/{projectNo}", method = RequestMethod.GET)
	public String insertmemoView(@PathVariable("projectNo") int projectNo, Model model) {
		model.addAttribute("projectNo", projectNo);
		return "content/insertmemo";
	}
	
	@RequestMapping(value = "/detail/insertmemo/{projectNo}", method = RequestMethod.POST)
	public String insertMemo(@PathVariable("projectNo") int projectNo,Content content) {
		int result = contentservice.insertMemo(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect: ../" + projectNo;
		}
	}
	
	@RequestMapping(value = "/detail/updatewebView/{projectNo}/{no}", method = RequestMethod.GET)
	public String updatewebView(@PathVariable("projectNo") int projectNo,@PathVariable("no") int no, Model model) {
		Content content = new Content();
		content = contentservice.selectContent(no);
		model.addAttribute("content",content);
		return "content/updateweb";
	}
	
	@RequestMapping(value = "/detail/updateweb/{projectNo}/{no}", method = RequestMethod.POST)
	public String updateWeb(Content content) {
		int projectNo = content.getProjectNo();
		int result = contentservice.updateWebsite(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:../" + projectNo;
		}
		
	}
	
	@RequestMapping(value = "/detail/updatememoView/{projectNo}/{no}", method = RequestMethod.GET)
	public String updatememoView(@PathVariable("projectNo") int projectNo,@PathVariable("no") int no, Model model) {
		Content content = new Content();
		content = contentservice.selectContent(no);
		model.addAttribute("content",content);
		return "content/updatememo";
	}
	
	@RequestMapping(value = "/detail/updatememo/{projectNo}/{no}", method = RequestMethod.POST)
	public String updateMemo(Content content) {
		int projectNo = content.getProjectNo();
		int result = contentservice.updateMemo(content);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:../" + projectNo;
		}
		
	}
	
	@RequestMapping(value = "/detail/delete/{projectNo}/{no}", method = RequestMethod.GET)
	public String delete(@PathVariable("projectNo") int projectNo,@PathVariable("no") int no) {
		int result = contentservice.deleteContent(no);
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:../" + projectNo;
		}
	}
	
	@RequestMapping(value = "/detail/uploadfile/{projectNo}", method = RequestMethod.POST)
	public String insertFile(@PathVariable("projectNo") int projectNo, @RequestPart MultipartFile files) throws  Exception{
		Files file = new Files();
		System.out.println("ajax");
		String sourceFileName = files.getOriginalFilename();
		String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String filePath = "D:/Java/source/";
		String fileSize = String.valueOf(files.getSize());
		
		do { 
			destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension; 
			destinationFile = new File(filePath + destinationFileName); 
		} while (destinationFile.exists()); 
		
		destinationFile.getParentFile().mkdirs();
		files.transferTo(destinationFile);
		
		file.setProjectNo(projectNo);
		file.setName(destinationFileName);
		file.setOriname(sourceFileName);
		System.out.println("name: " + file.getName());
		file.setPath(filePath);
		file.setSize(fileSize);
		fileservice.insertFile(file);
		
		return "redirect:/project/detail/" + projectNo;
	}

	@RequestMapping(value = "/detail/fileDownload")
	public ModelAndView fileDownload(@RequestParam("fileOriName") String fileOriName, @RequestParam("fileName") String fileName,@RequestParam("path") String path) throws Exception{
	
		Map<String, Object> fileInfo = new HashMap<String, Object>();
		fileInfo.put("fileOriName", fileOriName);
		fileInfo.put("fileName",fileName);
		fileInfo.put("path", path);

		return new ModelAndView("fileDownloadUtil", "fileInfo", fileInfo);
	}
	
	@RequestMapping(value = "/detail/deletefile/{projectNo}/{no}", method = RequestMethod.GET)
	public String deleteFile(@PathVariable("projectNo") int projectNo, @PathVariable("no") int no) throws Exception {
		int result = 0;
		Files fileno = fileservice.fileNo(no);
		String path = fileno.getPath() + fileno.getName();
		File file = new File(path);
		if(file.exists() == true) {
			file.delete();
			result = fileservice.deleteFile(no);
		}
		
		if(result == 1) {
			return "redirect:/project/detail/" + projectNo;
		}else {
			return "redirect:/project/detail/" + projectNo;
		}
	}
}