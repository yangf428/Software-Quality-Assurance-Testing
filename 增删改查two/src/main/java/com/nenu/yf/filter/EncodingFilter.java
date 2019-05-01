package com.nenu.yf.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @ Author     ：YF
 * @ Date       ：Created in 11:17 2019/1/3
 * @ Description：新建一个class，实现接口Filter（注意：是javax.servlet中的Filter）。
 */
public class EncodingFilter implements Filter {
    private String encoding;
    private String sessionKey;
    private String redirectUrl;
    private String uncheckedUrls;

    public void init(FilterConfig filterConfig) throws ServletException {
        ServletContext servletContext = filterConfig.getServletContext();
        //获取XML文件中配置参数
        sessionKey = servletContext.getInitParameter("userSessionKey");
        System.out.println("sessionKey======" + sessionKey);
        redirectUrl = servletContext.getInitParameter("redirectPage");
        System.out.println("redirectPage======" + redirectUrl);
        uncheckedUrls = servletContext.getInitParameter("uncheckedUrls");
        System.out.println("uncheckedUrls=====" + uncheckedUrls);
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //类型强转,为了继承httpServletRequest中更多的方法
        HttpServletRequest request1 = (HttpServletRequest) request;//获取request对象
        HttpServletResponse response1 = (HttpServletResponse) response;//获取response对象
        HttpSession session = request1.getSession();//获取session对象
//过滤操作代码
        //1.获取请求URL
        String servletPath = request1.getServletPath();
        String path = request1.getRequestURI();

        //2.检测1中获取的servletPath是否为不需要检测的URl中的一个.若是,放行
        List<String> urls = Arrays.asList(uncheckedUrls.split(","));
        if (urls.contains(servletPath)) {
            chain.doFilter(request1, response1);
            return;
        }

        //3.从session中获取SessionKey对应值,若值不存在,则重定向到redirectUrl
        Object user = request1.getSession().getAttribute("username");
        if ((user == null)) {
            response1.sendRedirect(request1.getContextPath() + redirectUrl);
            return;
        }

        //4.若存在,则放行
        chain.doFilter(request1, response);
    }

    public void destroy() {
    }
}
