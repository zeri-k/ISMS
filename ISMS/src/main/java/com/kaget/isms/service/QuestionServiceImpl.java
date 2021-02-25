package com.kaget.isms.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kaget.isms.dao.IQuestionDAO;
import com.kaget.isms.model.QuestionDTO;

@Service("IQuestionService")
public class QuestionServiceImpl implements IQuestionService{
	@Autowired
	private IQuestionDAO dao;

	@Override
	public QuestionDTO selectQuestion() {
		// TODO Auto-generated method stub
		return dao.selectQuestion();
	}

	@Override
	public HashMap<String, Object> selectTest() {
		// TODO Auto-generated method stub
		return dao.selectTest();
	}
}
