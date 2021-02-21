package com.kaget.isms.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

import org.apache.ibatis.io.ResolverUtil.Test;
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
	
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String index() {
		return "redirect:/";
	}
	
	@RequestMapping(value = "question", method = RequestMethod.GET)
	public ModelAndView question() {
		Random random = new Random();
        random.setSeed(System.currentTimeMillis());

		int num = random.nextInt(325)+1;
		ModelAndView mv = new ModelAndView("question");

		QuestionDTO question = QuestionService.selectQuestion(num);
		mv.addObject("question", question);
		return mv;
	}
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public ModelAndView test() {
		Random random = new Random();
        random.setSeed(System.currentTimeMillis());

        int list[] = new int[30];
		
		for(int i=0; i<30; i++) {
			list[i] = random.nextInt(325)+1;
			for(int j=0; j<i; j++) {
				if(list[i]==list[j]) {
					i--;
				}
			}
		}
		
		Integer[] conv = Arrays.stream(list).boxed().toArray(Integer[]::new);
		ArrayList<Integer> TestList = new ArrayList<Integer>(Arrays.asList(conv));

		HashMap<String, Object> map = QuestionService.selectTest(TestList);

		ModelAndView mv = new ModelAndView("test");
        mv.addObject("list", map.get("list"));
		return mv;
	}
	
	@RequestMapping(value = "reset", method = RequestMethod.POST)
	public @ResponseBody QuestionDTO reset() {
		System.out.println("reset");
		Random random = new Random();
        random.setSeed(System.currentTimeMillis());

		int num = random.nextInt(325)+1;

		QuestionDTO question = QuestionService.selectQuestion(num);
		return question;
	}
}
