package com.zhw.service;

import java.util.List;

import com.zhw.dao.CommentDao;
import com.zhw.entity.Comment;

public class CommentService {

	public CommentService() {
	}

	public List<Comment> findAllByTitle(String title){
		CommentDao dao = new CommentDao();
		return dao.findAllByTitle(title);
	}
	
	public String addComment(Comment comment){
		CommentDao dao = new CommentDao();
		return dao.addComment(comment);
	}
}
