package com.wfw_simin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wfw_simin.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.wfw_simin.mappers.board";
	
	@Override
	public List list() throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".list");
	}

	@Override
	public void write(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		
		sql.insert(namespace + ".write", vo);
		
	}

	@Override
	public BoardVO view(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".view", bno);
	}

	
	@Override
	public void modify(BoardVO vo) throws Exception {
	 sql.update(namespace + ".modify", vo);
	}
	
	
	public void delete(int bno) throws Exception {
		 sql.delete(namespace + ".delete", bno);
	}
	
	@Override
	public int count() throws Exception {
		return sql.selectOne(namespace + ".count"); 
	}
	
	
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {

		 HashMap<String, Integer> data = new HashMap<String, Integer>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		  
		 return sql.selectList(namespace + ".listPage", data);
	}

	@Override
	public List tag() throws Exception {
		return sql.selectList(namespace+".tag");
	}

	
}
