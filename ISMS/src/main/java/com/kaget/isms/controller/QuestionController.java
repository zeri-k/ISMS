package com.kaget.isms.controller;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.kaget.isms.model.QuestionDTO;
import com.kaget.isms.service.IQuestionService;

@Controller
public class QuestionController {
	@Autowired
	IQuestionService QuestionService;
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String index() {
		return "redirect:question.do";
	}
	
	@RequestMapping(value = "question.do", method = RequestMethod.GET)
	public ModelAndView question() {
		ModelAndView mv = new ModelAndView("question");
		QuestionDTO question = QuestionService.selectQuestion();
		mv.addObject("question", question);
		return mv;
	}
	
	@RequestMapping(value = "test.do", method = RequestMethod.GET)
	public ModelAndView test() {
		HashMap<String, Object> map = QuestionService.selectTest();

		ModelAndView mv = new ModelAndView("test");
        mv.addObject("list", map.get("list"));
		return mv;
	}
	
	@RequestMapping(value = "reset.do", method = RequestMethod.POST)
	public @ResponseBody QuestionDTO reset() {
		QuestionDTO question = QuestionService.selectQuestion();
		return question;
	}
}
