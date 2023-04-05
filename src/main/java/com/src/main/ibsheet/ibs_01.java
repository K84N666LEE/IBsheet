package com.src.main.ibsheet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ibs_01 {

	@GetMapping("/jsp/main")
	public String jsp() {
		return "/main";
	}

	@GetMapping("/th/main")
	public String main() {
		return "th/main";
	}
	@GetMapping("/th/test")
	public String test() {
		return "th/test";
	}

}
