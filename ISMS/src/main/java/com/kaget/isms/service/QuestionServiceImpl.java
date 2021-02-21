package com.kaget.isms.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaget.isms.dao.IQuestionDAO;
import com.kaget.isms.model.QuestionDTO;

@Service("IQuestionService")
public class QuestionServiceImpl implements IQuestionService{
	@Autowired
	private IQuestionDAO dao;

	@Override
	public QuestionDTO selectQuestion(int num) {
		// TODO Auto-generated method stub
		return dao.selectQuestion(num);
	}

	@Override
	public HashMap<String, Object> selectTest(@Param("TestList") ArrayList<Integer> TestList) {
		// TODO Auto-generated method stub
		return dao.selectTest(TestList);
	}
}
