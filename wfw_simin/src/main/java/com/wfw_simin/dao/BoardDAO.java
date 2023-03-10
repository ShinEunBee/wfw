package com.wfw_simin.dao;

import java.util.List;

import com.wfw_simin.domain.BoardVO;

public interface BoardDAO {
	
	public List list() throws Exception; 
	
	public List tag() throws Exception; 
	
	public void write(BoardVO vo) throws Exception;
	
	public BoardVO view(int bno) throws Exception;
	
	public void modify(BoardVO vo) throws Exception;
	
	public void delete(int bno) throws Exception;

	public int count() throws Exception;

	
	public List listPage(int displayPost, int postNum) throws Exception;
}
