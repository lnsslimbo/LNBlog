package com.zhw.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		
		String url = req.getServletPath();
		HttpSession session = req.getSession();
		String userName = (String) session.getAttribute("UserName");
		//System.out.println(userName);
		
			if (userName == null || userName.equals("")){
				//System.out.println(userName);
				//System.out.println("Пе");
				if(url.contains("index.jsp") || url.contains("CateServlet") || url.contains("EducateServlet") 
						|| url.contains("EntertainmentServlet") || url.contains("XingzuoServlet")){
					res.sendRedirect("IndexServlet");
					return;
				}
				if(url.contains("ChangeServlet") || url.contains("UserInformationServlet")){
					res.sendRedirect("LoginServlet");
					return;
				}
				
			}
			
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
