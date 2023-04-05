package com.src.main.ibsheet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ibs_01 {

	///////////////////////////////////////////////
	// JSTL - JSP
	///////////////////////////////////////////////
	// # JSTL - IBsheet Excel Down/Up
	// spring.mvc.view.prefix=/WEB-INF/jsp/
	// spring.mvc.view.suffix=.jsp
	///////////////////////////////////////////////

	@GetMapping("/name")
	public String jsp(Model model) {
		model.addAttribute("name", "홍길동");
		return "/main";
	}

	///////////////////////////////////////////////
	// Thymleaf - HTML
	///////////////////////////////////////////////
	// # thymeleaf 사용 여부
	// spring.thymeleaf.enabled=true
	// spring.thymeleaf.cache=false
	// # template 경로 접두사
	// spring.thymeleaf.prefix=classpath:/templates/
	// # template 경로 접미사
	// spring.thymeleaf.suffix=.html
	// # template 인코딩
	// spring.thymeleaf.encoding=UTF-8
	// #기본 template 모드, TemplateMode에 정의 (HTML, XML, TEXT, JAVASCRIPT 등)
	// spring.thymeleaf.mode=HTML
	// # 렌더링 전에 template 존재 여부 확인
	// spring.thymeleaf.check-template=true
	// # 타임리프 적용 디렉토리
	// #spring.thymeleaf.view-names=th/**
	// spring.thymeleaf.view-names=project/*
	// # template 위치 존재 여부 확인
	// spring.thymeleaf.check-template-location=true
	///////////////////////////////////////////////

	@GetMapping("/admin/main")
	public String admin_main() {
		return "project/admin/main";
	}

	@GetMapping("/main")
	public String main() {
		return "project/main";
	}
	@GetMapping("/test")
	public String test() {
		return "project/test";
	}

}
