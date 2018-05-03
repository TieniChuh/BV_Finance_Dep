package com.filters;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by Administrator on 2018/4/18.
 */
public class PrivateFilterSe implements Filter {


    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("PrivateFilterSe_init");
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("PrivateFilterSe_doFilter");
        filterChain.doFilter(servletRequest,servletResponse);
    }

    public void destroy() {
        System.out.println("PrivateFilterSe_destroy");
    }
}
