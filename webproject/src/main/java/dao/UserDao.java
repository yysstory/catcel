package dao;

import vo.User;

public interface UserDao {
	public int insertUser(User user);
	public int getUserNo(String userEmail);
	public void insertRole(String email,String role);
	public User getUserInfo(String userEmail);
	public User getUserSimpleInfo(int userNo);
}
