package com.nenu.yf.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @ Author     ：YF
 * @ Date       ：Created in 11:17 2019/1/3
 * @ Description：新建一个class，实现接口Filter（注意：是javax.servlet中的Filter）
 */

public class CharacterEncodingFilter implements Filter {

    public void destroy() {
    }

    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) arg0;
        HttpServletResponse response = (HttpServletResponse) arg1;
        HttpSession session = request.getSession();
        // 获得用户请求的URI
        String path = request.getRequestURI();
        String username = (String) session.getAttribute("username");

        if (path.indexOf("index") > -1) {//登录页面不过滤
            arg2.doFilter(arg0, arg1);//递交给下一个过滤器
            return;
        }
        if (path.indexOf("addstudent") > -1) {//注册页面不过滤
            arg2.doFilter(request, response);
            return;
        }

        if (username != null) {//已经登录
            arg2.doFilter(request, response);//放行，递交给下一个过滤器
        } else {
            response.sendRedirect("index");

        }
    }

    public void init(FilterConfig arg0) throws ServletException {
    }
}
