package com.controller;

import com.entity.News;
import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/delnews")
public class DelnewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int newsid = Integer.parseInt(req.getParameter("newsid"));
        UserService.deleteNews(newsid);
//        req.getRequestDispatcher("/WEB-INF/jsp/allnews.jsp").forward(req, resp);
        resp.sendRedirect(req.getContextPath() + "/allnews");
    }
}
