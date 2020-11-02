package co.kr.sproject.service;

import javax.servlet.http.HttpSession;

import co.kr.sproject.vo.UserVO;

public interface UserService {
	
	//회원가입
	public void regist(UserVO vo)throws Exception;
	
	//로그인
	public boolean login(String id, String passwd, HttpSession session)throws Exception;

	//로그아웃
	public void logout(HttpSession session) throws Exception;
	
	
	
	
/*	//회원 로그인 체크
	public boolean loginCheck(UserVO vo, HttpSession session);
	//회원 로그인 정보
	public UserVO viewUser(UserVO vo);
	//회원 로그아웃
	public void logout(HttpSession session);
*/
	
	

}
