package service;

import java.util.List;

import dao.UsersDAO;
import vo.UsersVO;

public class UsersServiceImpl implements UsersService{
	
	UsersDAO dao;
	
	
	public UsersServiceImpl() { }
	public UsersServiceImpl(UsersDAO dao) {
		this.dao = dao;
	}

	
	public UsersDAO getDao() {
		return dao;
	}
	public void setDao(UsersDAO dao) {
		this.dao = dao;
	}
	
	
	@Override
	public List<UsersVO> getUsersRec() {
		return dao.getUsersRec();
	}

	@Override
	public int updateUsers(UsersVO users) {
		return dao.updateUsers(users);
	}

	@Override
	public int insertUsers(UsersVO vo) {
		return dao.insertUsers(vo);
	}

	@Override
	public int deleteUsers(String id) {
		return dao.deleteUsers(id);
	}

	@Override
	public UsersVO loginUsers(UsersVO vo) {
		return dao.loginUsers(vo);
	}

}
