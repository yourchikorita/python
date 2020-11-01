package com.ejcompany.myapp.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.ejcompany.myapp.common.JDBCUtil;
import com.ejcompany.myapp.user.UserVO;

@Repository("userDAO")
public class UserDAO {
		private Connection conn = null;
		private PreparedStatement stmt = null;
		private ResultSet rs = null;
		// SQL
		private final String USER_GET = "select * from users where id=? and password=?";

		
		public UserVO getUser(UserVO vo) {
			UserVO user = null;
			try {
				System.out.println("===> JDBCgetUser() ");
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(USER_GET);
				stmt.setString(1, vo.getId());
				stmt.setString(2, vo.getPassword());
				rs = stmt.executeQuery();
				if (rs.next()) {
					user = new UserVO();
					user.setId(rs.getString("id"));
					user.setPassword(rs.getString("password"));
					user.setName(rs.getString("name"));
					user.setRole(rs.getString("role"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(rs, stmt, conn);
			}
			return user;
		}
}
