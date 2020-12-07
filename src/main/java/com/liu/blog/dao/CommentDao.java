package com.liu.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.liu.blog.common.DbObject;
import com.liu.blog.entity.Comment;


public class CommentDao {

	public CommentDao() {
	}

	public List<Comment> findAllByTitle(String title){
		List<Comment> list = new ArrayList<Comment>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			String sql = "select * from Comment where Title = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, title);
			rs = st.executeQuery();
			while(rs.next()){
				Comment comment = new Comment();
				comment.setCommentID(rs.getString("CommentID"));
				comment.setTitle(rs.getString("Title"));
				comment.setContent(rs.getString("Content"));
				comment.setUserName(rs.getString("UserName"));
				comment.setCommentDate(rs.getString("CommentDate"));
				list.add(comment);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		
		return list;
	}
	
	public String addComment(Comment comment){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			if(comment.getContent().length()>=3){
			    String sql = "insert into Comment(UserName,Title,Content,CommentDate) values(?,?,?,?);";
			    System.out.println(sql);
		
			    st = cn.prepareStatement(sql);
			    st.setString(1, comment.getUserName());
			    st.setString(2, comment.getTitle());
			    st.setString(3, comment.getContent());
			    st.setString(4, comment.getCommentDate());
			
			    int ret = st.executeUpdate();
			    if(ret>0){
			    	success = success + "����ɹ���";
					System.out.println(success);
			    }
			}else{
				success = success + "���ݳ���Ӧ�ô��ڵ����������������룡";
				System.out.println(success);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		return success;
	}
}
