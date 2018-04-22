package me.gacl.web.controller;

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
 * Servlet Filter implementation class RightFilter
 */
@WebFilter("/RightFilter")
public class RightFilter implements Filter {
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
    public RightFilter() {
        // TODO Auto-generated constructor stub
    	
    }

	/**
	 * @see Filter#destroy()
	 */
	

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
	    HttpServletResponse res = (HttpServletResponse) response;
	    
	    HttpSession session = req.getSession(true);

	    //��session��ȡ���û�����Ϣ
	    String username = (String) session.getAttribute("Username");
	    
	    //�ж����û��ȡ���û���Ϣ,����ת����½ҳ��
	    if (username == null || "".equals(username)) {
	      //��ת����½ҳ��
	      res.sendRedirect("../userresitger/login2.jsp");
	    }
	    else {
	      //�Ѿ���½,�����˴�����
	      chain.doFilter(request,response);
	    }
		
	}
	public void destroy() {
		// TODO Auto-generated method stub
	}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	

}
