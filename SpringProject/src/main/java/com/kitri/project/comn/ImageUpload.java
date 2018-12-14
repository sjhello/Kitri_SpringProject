package com.kitri.project.comn;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageUpload {
	
	@RequestMapping(value = "imageUpload.do")
	public String imageUpload(HttpServletRequest request ,@RequestParam("file") MultipartFile file, Model model) {
		String url = "";
		String fileName = file.getName();
		String originFilename = file.getOriginalFilename();
		String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
		Long size = file.getSize();

		System.out.println("originFilename : " + originFilename);
		System.out.println("fileName : " + fileName);
		System.out.println("extensionName : " + extName);
		System.out.println("size : " + size);
        String rootPath = request.getSession().getServletContext().getRealPath("/");
        String imageUploadPath = rootPath+"resources/uploadImage/"+originFilename;
        File f = new File(imageUploadPath);
	
		try {
			file.transferTo(f);
		} catch (IllegalStateException e) {
			System.out.println("에러");
		} catch (IOException e) {
			System.out.println("파일없어");
		}
		String imageUrl = "resources/uploadImage/"+originFilename;
		
		System.out.println(imageUrl);
		model.addAttribute("url", imageUrl);
		
		return "ajax/ajaxImageUpload";
	}
}
