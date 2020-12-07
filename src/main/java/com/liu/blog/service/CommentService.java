package com.liu.blog.service;

import java.util.List;

import com.liu.blog.dao.CommentDao;
import com.liu.blog.entity.Comment;

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
