package com.project.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.travel.service.UserService;
import com.project.travel.utility.Utilities;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("user/*")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;
		
	// 회원가입 get
	@RequestMapping(value="/Sign_Up/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(UserVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	// 전화번호 중복 체크
	@ResponseBody
	@RequestMapping(value="/phoneChk", method = RequestMethod.POST)
	public int phoneChk(UserVO vo) throws Exception {
		int result = service.phoneChk(vo);
		return result;
	}

	// 회원가입 post
	@RequestMapping(value="/Sign_Up/register", method = RequestMethod.POST)
	public String postRegister(UserVO vo) throws Exception {
		logger.info("post register");
		
		int result = service.idChk(vo);
		int result2 = service.phoneChk(vo);
		Utilities util = Utilities.getInstance();
		
		try {
			if(result == 1 || result2 == 1) {
				return "redirect:/user/Sign_Up/register";
			}else if(result == 0 && result2 == 0) {
				String inputPass = vo.getM_Pw();							// 비밀번호 암호화
				String pwd = util.makeSha256BCrypt(inputPass);
				vo.setM_Pw(pwd);
				
				service.register(vo);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/user/Sign_In/login";
	}
	
	// 로그인 get
	@RequestMapping(value="/Sign_In/login", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		logger.info("get login");
	}

	// 로그인 post
	@RequestMapping(value="/Sign_In/login", method = RequestMethod.POST)
	public String login(UserVO vo, HttpServletRequest req, RedirectAttributes rttr, @RequestParam("M_Pw") String pw) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);
		
		boolean pwdMatch;
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
		} else {
			pwdMatch = false;
		}
				
		if(login != null && pwdMatch == true) {
			session.setAttribute("user", login);
			return "redirect:/main/main";
		} else {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/Sign_In/login";	
		}
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/main/main";
	}
	
	// 아이디 찾기 get
	@RequestMapping(value="/Find_Id/findId", method = RequestMethod.GET)
	public void getFindId() throws Exception {
		logger.info("get findId");
	}

	// 아이디 찾기 post
	@RequestMapping(value="/Find_Id/findId", method = RequestMethod.POST)
	public String findId(UserVO vo, RedirectAttributes rttr) throws Exception{
		logger.info("post findId");
		
		UserVO findId = service.findId(vo);
		
		if(findId != null) {
			rttr.addFlashAttribute("user", findId);
			rttr.addFlashAttribute("msg", true);
			rttr.addFlashAttribute("value", 7);
			return "redirect:/user/Find_Id/findId";
		} else {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/Find_Id/findId";	
		}
	}
	
	// 비밀번호 찾기 get
	@RequestMapping(value="/Find_Pw/findPw", method = RequestMethod.GET)
	public void getFindPw() throws Exception {
		logger.info("get findPw");
	}
	
	@RequestMapping(value="/Find_Pw/findPw", method = RequestMethod.POST)
	public String findPw(UserVO vo, HttpSession session ,RedirectAttributes rttr) throws Exception{
		logger.info("post findId");
		
		UserVO findPw = service.findPw(vo);
		
		if(findPw != null) {
			session.setAttribute("M_Id", findPw.getM_Id());
			return "redirect:/user/Find_Pw/changePwd";
		} else {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/Find_Pw/findPw";	
		}
	}
	
	// 비밀번호 찾기 후 변경 get
	@RequestMapping(value="/Find_Pw/changePwd", method = RequestMethod.GET)
	public void getChangePwd() throws Exception {
		logger.info("get changePwd");
	}
	
	// 비밀번호 찾기 후 변경 post
	@RequestMapping(value="/Find_Pw/changePwd", method = RequestMethod.POST)
	public String postChangePwd(UserVO vo, HttpSession session) throws Exception{
		logger.info("post changePwd");
		
		Utilities util = Utilities.getInstance();
		
		vo.setM_Id((String) session.getAttribute("M_Id"));
		String inputPass = vo.getM_Pw();							// 비밀번호 암호화
		String pwd = util.makeSha256BCrypt(inputPass);
		vo.setM_Pw(pwd);
		
		service.changePwd(vo);
		session.invalidate();
		
		return "redirect:/user/Sign_In/login";	
	}
	
	// 회원정보 수정 post
	@RequestMapping(value="user/userUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int userUpdate(UserVO vo, HttpServletRequest req, RedirectAttributes rttr, @RequestParam("M_Pw") String pw) throws Exception {
		logger.info("post userUpdate");
		
		HttpSession session = req.getSession();
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);
		
		boolean pwdMatch;
		int result = 0; 
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
		} else {
			pwdMatch = false;
		}
				
		if(login != null && pwdMatch == true) {
			result = service.userUpdate(vo);
			session.setAttribute("user", login);
		} else {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
		}
		return result;
	}
	
	// 비밀번호 변경 post
	@RequestMapping(value="user/modPwd",method = RequestMethod.POST)
	@ResponseBody
	public int modPwd(UserVO vo, @RequestParam("newPwd") String newPwd, @RequestParam("newPwd2") String newPwd2,  @RequestParam("M_Pw") String pw, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post modPwd");
		
		HttpSession session = req.getSession();
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);
		
		boolean pwdMatch;
		int result = 0; 
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
		} else {
			pwdMatch = false;
		}
				
		if(login != null && pwdMatch == true) {
			if(newPwd.equals(newPwd2)) {							// 비밀번호 암호화
				String pwd = util.makeSha256BCrypt(newPwd);
				vo.setM_Pw(pwd);
				
				result = service.changePwd(vo);
			}
			login = service.login(vo);
			session.setAttribute("user", login);
		}
		return result;
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value="user/delUser",method = RequestMethod.POST)
	@ResponseBody
	public int delUser(UserVO vo, HttpSession session, @RequestParam("M_Pw") String pw) throws Exception {
		logger.info("post delUser");
		
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);
		
		boolean pwdMatch;
		int result = 0; 
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
		} else {
			pwdMatch = false;
		}
		
		if(login != null && pwdMatch == true) {
			result=service.delUser(vo);
			session.invalidate();
		}
		
		return result;
	}

}