package com.kaget.isms.dao;

import java.util.HashMap;
import com.kaget.isms.model.QuestionDTO;

public interface IQuestionDAO {
	public QuestionDTO selectQuestion();
	public HashMap<String, Object> selectTest();
}
