package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import dao.MallDao;
import dao.UserDao;

public class AuthFilter implements Filter {

	@Autowired
	UserDao userDao;
	@Autowired
	MallDao mallDao;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpSession session = request.getSession();
	//	String userEmail = request.getUserPrincipal().getName();
		System.out.println("필터----");
		System.out.println("필터");

		/*
		session.setAttribute("userName",
				userDao.getUserInfo(userEmail).getUserName());
		session.setAttribute("mallNameList", mallDao
				.selectMallNameList(userDao.getUserNo(userEmail)));*/
        chain.doFilter(req, res);
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
