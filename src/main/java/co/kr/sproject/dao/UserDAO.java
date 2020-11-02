package co.kr.sproject.dao;

import javax.servlet.http.HttpSession;

import co.kr.sproject.vo.UserVO;

public interface UserDAO {
	
	//회원가입 처리
	void regist(UserVO vo) throws Exception;
	
	//로그인
	boolean login(String id, String passwd, HttpSession session) throws Exception;

	//로그아웃
	void logout(HttpSession session) throws Exception;

	
	
/*	//회원로그인체크
	public boolean loginCheck(UserVO vo);
	//회원로그인정보
	public UserVO viewUser(UserVO vo);
	//회원로그아웃
	public void logout(HttpSession session);
	*/
}
