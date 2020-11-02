package co.kr.sproject.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import co.kr.sproject.dao.UserDAO;
import co.kr.sproject.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	UserDAO dao;
	
	//회원가입
	@Override
	public void regist(UserVO vo) throws Exception {
		System.out.println("***********************3");
		dao.regist(vo);
		System.out.println("***********************4");
	}

	//로그인
	@Override
	public boolean login(String id, String passwd, HttpSession session) throws Exception {
		boolean isExist = dao.login(id, passwd, session);

		if(isExist){
			session.setAttribute("userId", id);
		}
		return isExist;
	}

	//로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
