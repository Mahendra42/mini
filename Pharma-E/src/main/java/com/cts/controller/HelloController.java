package com.cts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

	@GetMapping(value = { "/Welcome", "/" })
	public String welcome() {
		return "Welcome";
	}

	@GetMapping("/admin")
	public String adm() {
		return "Awelcome";
	}

}
