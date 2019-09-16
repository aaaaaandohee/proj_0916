package service;

import java.util.List;

import vo.UsersVO;

public interface UsersService {
	
	public List<UsersVO> getUsersRec(); 
	public int updateUsers(UsersVO users);
	public int insertUsers(UsersVO vo);
	public int deleteUsers(String id);
	public UsersVO loginUsers(UsersVO vo);
	
}
