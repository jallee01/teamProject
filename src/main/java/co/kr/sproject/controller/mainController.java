package co.kr.sproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//회원정보
	@RequestMapping(value="Top_memberInfo.do")
	public String TopMemberInfo() {
		return "Top_memberInfo";
	}
	//공지사항
	@RequestMapping(value="Top_customer_notice.do")
	public String TopCustomerNotice() {
		return "Top_customer_notice";
	}
	//FAQ
	@RequestMapping(value="Top_customer_FAQ.do")
	public String TopCustomerFAQ() {
		return "Top_customer_FAQ";
	}
	//1:1
	@RequestMapping(value="Top_customer_1.do")
	public String TopCustomer1() {
		return "Top_customer_1";
	}	
	//장바구니
	@RequestMapping(value="shoppingBasket.do")
	public String shoppingBasket() {
		return "shoppingBasket";
	}
	//주문하기
	@RequestMapping(value="PC_OR_01.do")
	public String PC_OR_01() {
		return "PC_OR_01";
	}	
	//스토리_호박고구마
	@RequestMapping(value="PC_DE_01.do")
	public String PC_DE_01() {
		return "PC_DE_01";
	}	
	//농산물_상세1
	@RequestMapping(value="PC_LI_01.do")
	public String PC_LI_01() {
		return "PC_LI_01";
	}
	//농산물_상세2
	@RequestMapping(value="PC_LI_02.do")
	public String PC_LI_02() {
		return "PC_LI_02";
	}
	//농산물_상세3
	@RequestMapping(value="PC_LI_03.do")
	public String PC_LI_03() {
		return "PC_LI_03";
	}
	//농산물_상세4
	@RequestMapping(value="PC_LI_04.do")
	public String PC_LI_04() {
		return "PC_LI_04";
	}
	//수산물_상세1
	@RequestMapping(value="PC_LI_05.do")
	public String PC_LI_05() {
		return "PC_LI_05";
	}
	//수산물_상세2
	@RequestMapping(value="PC_LI_06.do")
	public String PC_LI_06() {
		return "PC_LI_06";
	}
	//수산물_상세3
	@RequestMapping(value="PC_LI_07.do")
	public String PC_LI_07() {
		return "PC_LI_07";
	}
	//수산물_상세4
	@RequestMapping(value="PC_LI_08.do")
	public String PC_LI_08() {
		return "PC_LI_08";
	}
	//축산물_상세1
	@RequestMapping(value="PC_LI_09.do")
	public String PC_LI_09() {
		return "PC_LI_09";
	}
	//축산물_상세2
	@RequestMapping(value="PC_LI_10.do")
	public String PC_LI_10() {
		return "PC_LI_10";
	}
	//축산물_상세3
	@RequestMapping(value="PC_LI_11.do")
	public String PC_LI_11() {
		return "PC_LI_11";
	}
	//축산물_상세4
	@RequestMapping(value="PC_LI_12.do")
	public String PC_LI_12() {
		return "PC_LI_12";
	}
	//제철특산물
	@RequestMapping(value="Menu_seasonal.do")
	public String Menu_seasonal() {
		return "Menu_seasonal";
	}
	//지역별 특산물
	@RequestMapping(value="Menu_prodMap.do")
	public String Menu_prodMap() {
		return "Menu_prodMap";
	}
	//스토리마켓 소개
	@RequestMapping(value="Menu_Intro.do")
	public String Menu_Intro() {
		return "Menu_Intro";
	}
	
		
}
