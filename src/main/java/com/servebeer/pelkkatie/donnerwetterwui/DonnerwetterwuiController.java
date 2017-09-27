package com.servebeer.pelkkatie.donnerwetterwui;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DonnerwetterwuiController {

	@Value("${backendurl}")
	private String backendurl;

	@RequestMapping("/")
	public String getDWFrontPage(Map<String, Object> model) {
		model.put("backendurl", this.backendurl);
		return "dw_frontpage";
	}

}
