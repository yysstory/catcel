package controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vo.User;
import dao.MallDao;
import dao.UserDao;

@Controller
public class UserControl {

	@Autowired
	UserDao userDao;

	@Autowired
	MallDao mallDao;

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		System.out.println("join get 접속");
		return "join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(User user) {
		System.out.println("join post 접속");
		System.out.println(user.toString());

		if (user != null) {
			System.out.println(user);
			String password = user.getUserPassword();
			PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String bPassword = passwordEncoder.encode(password);
			System.out.println(bPassword);
			user.setUserPassword(bPassword);
			user.setUserEnabled(1);
			userDao.insertUser(user);
			userDao.insertRole(user.getUserEmail(), "ROLE_USER");
		}

		return "join";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet() {
		System.out.println("login get 접속");
		return "login";
	}

	@RequestMapping(value = "/bridge", method = RequestMethod.GET)
	public String bridgeGet(HttpSession sesstion, Principal principal) {
		
		sesstion.setAttribute("userName",
				userDao.getUserInfo(principal.getName()).getUserName());
		sesstion.setAttribute("mallNameList", mallDao
				.selectMallNameList(userDao.getUserNo(principal.getName())));
		return "redirect:index.htm";
	}

}
