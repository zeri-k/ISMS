package com.kaget.isms.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kaget.isms.model.QuestionDTO;

@Repository
public class QuestionDAOImpl implements IQuestionDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	@Override
	public QuestionDTO selectQuestion(int num) {
		System.out.println("select Question() 처리");
		return mybatis.selectOne("questionService.selectQuestion", num);
	}
	@Override
	public HashMap<String, Object> selectTest(@Param("TestList") ArrayList<Integer> TestList) {
		System.out.println("select Test() 처리");
		HashMap<String, Object> TestMap = new HashMap<String, Object>();
		TestMap.put("list", mybatis.selectList("questionService.selectTest", TestList));
		return TestMap;
	}
}
