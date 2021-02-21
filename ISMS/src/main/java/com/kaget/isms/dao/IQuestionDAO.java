package com.kaget.isms.dao;



import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.kaget.isms.model.QuestionDTO;

public interface IQuestionDAO {
	public QuestionDTO selectQuestion(int num);
	public HashMap<String, Object> selectTest(@Param("TestList") ArrayList<Integer> TestList);
}
