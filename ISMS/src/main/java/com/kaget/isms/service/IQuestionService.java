package com.kaget.isms.service;

import java.util.HashMap;
import com.kaget.isms.model.QuestionDTO;

public interface IQuestionService {
	public QuestionDTO selectQuestion();
	public HashMap<String, Object> selectTest();
}
