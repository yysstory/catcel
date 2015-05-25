package dao;

import vo.User;

public interface UserDao {
	public int insertUser(User user);
	public User getUser(int userNo);
}
