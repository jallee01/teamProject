package co.kr.sproject.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import co.kr.sproject.vo.UserVO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository //현재 클래스를 스프링에서 관리하는 dao bean 으로 등록
public class UserDAOImpl implements UserDAO {
	String nameSpace = "co.kr.sproject.mappers.UserMapper";
	
	//SqlSeesion 객체를 스프링에서 생성, 주입
	//의존관계 주입(DI), 느슨한 결합
	@Inject
	SqlSession sqlSession; //mybatis 실행 객체

	
	 // 회원가입
	 @Override 
	 public void regist(UserVO vo) throws Exception { 
		 System.out.println("***********************5");
		 System.out.println(vo.getId());
		sqlSession.insert(nameSpace +".regist" ,vo);
		System.out.println("***********************6");
	  }

	//로그인
	@Override
	public boolean login(String id, String passwd, HttpSession session) throws Exception {
		 System.out.println(id + " / " + passwd); //로그
		 Map<String, String> info = new HashMap<>();

		 info.put("id", id);
		 info.put("passwd", passwd);

	 	List<Map<String, Object>> result = sqlSession.selectList("co.kr.sproject.mappers.UserMapper.login", info);
		 System.out.println(result);

	 	boolean isExist = false;
	 	if(!result.isEmpty()){
	 		isExist = true;
		}
	 	return isExist;
	 }

	 @Override
	public void logout(HttpSession session){

	 }
}
