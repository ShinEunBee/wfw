package com.wfw_simin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wfw_simin.dao.BoardDAO;
import com.wfw_simin.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	 @Inject
	 private BoardDAO dao;
	 
	 @Override
	 public List<BoardVO> glist() throws Exception {
	
	  return dao.list();
	 }
	 
	 @Override
	 public List list() throws Exception {
	
	  return dao.list();
	 }

	@Override
	public void write(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.write(vo);
	}

	@Override
	public BoardVO view(int bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.view(bno);
	}
	
	@Override
	public void modify(BoardVO vo) throws Exception {
	  
	 dao.modify(vo);
	}
	
	
	public void delete(int bno) throws Exception {
		 dao.delete(bno);
	}

	
	@Override
	public int count() throws Exception {
		return dao.count();
	}
	
	
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}

	@Override
	public List tag() throws Exception {
		return dao.tag();
	}

}