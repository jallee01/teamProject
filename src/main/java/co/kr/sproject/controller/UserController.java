package co.kr.sproject.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.sproject.service.UserService;
import co.kr.sproject.vo.UserVO;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;

	// index
	@RequestMapping("index.do")
	public ModelAndView index() throws Exception {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/index");

		return mav;
	}

	//회원가입 get
	@RequestMapping(value="regist.do", method=RequestMethod.GET)
	public void getRegist() throws Exception {
		logger.info("get regist");
		System.out.println("***********************1");

		
	}

	//회원가입 post
	@RequestMapping(value="regist.do", method=RequestMethod.POST)
	public void postRegist(UserVO vo) throws Exception {
		logger.info("post regist");
		System.out.println(vo.getId());
		System.out.println("***********************1");
		
		service.regist(vo);
//		System.out.println("***********************2");

	}

	//로그인 get
	@RequestMapping(value="login.do", method=RequestMethod.GET)
    public void getLogin() throws Exception {
	      logger.info("get login");
	}
	   
	// 로그인 post
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView postLogin(String member_id, String password, HttpSession session) throws Exception {
		boolean isLogin = service.login(member_id, password, session);

		ModelAndView mav = new ModelAndView();

		
		if(isLogin){
			mav.setViewName("/index");
			mav.addObject("msg", "success");
		} else {
			mav.setViewName("login");
			mav.addObject("msg", "failure");
		}

		return mav;
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) throws Exception {
		service.logout(session);
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/index");

		return mav;
	}
	
	//admin 로그인 get
	@RequestMapping(value="admin/adminLogin.do", method=RequestMethod.GET)
	public void getAdmin() throws Exception {
		logger.info("get admin");
	}
	//admin 로그인 post
	@RequestMapping(value="admin/adminLogin.do", method=RequestMethod.POST)
	public ModelAndView postAdmin(String member_id, String password, HttpSession session) throws Exception {
		boolean isLogin = service.login(member_id, password, session);

		ModelAndView mav = new ModelAndView();

		
		if(isLogin){
			mav.setViewName("admin/adminSuccess");
			mav.addObject("msg", "success");
		} else {
			mav.setViewName("admin/adminLogin");
			mav.addObject("msg", "failure");
		}

		return mav;
	}

	/* admin controller */
	// admin 회원목록
	@RequestMapping(value="admin/adminSuccess.do")
	public String userList() {
		return "/admin/adminSuccess";
	}
	// admin 회원정보
	@RequestMapping(value="admin/userInfo.do")
	public String userInfo() {
		return "/admin/userInfo";
	}
	// admin 회원 정보 수정
	@RequestMapping(value="admin/modify.do")
	public String userModify() {
		return "/admin/modify";
	}
	//admin 게시글 목록
	@RequestMapping(value="admin/postList.do")
	public String postList() {
		return "/admin/postList";
	}
	//admin 게시글 상세
	@RequestMapping(value="admin/postInfo.do")
	public String postInfo() {
		return "/admin/postInfo";
	}
	//admin 게시글 수정
	@RequestMapping(value="admin/postModify.do")
	public String postModify() {
		return "/admin/postModify";
	}
	//admin 게시글 수정
	@RequestMapping(value="admin/posting.do")
	public String posting() {
		return "/admin/posting";
	}

}
