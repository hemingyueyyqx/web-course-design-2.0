package com.controller;

import com.entity.News;
import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/getnews")
public class GetNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int newsid = Integer.parseInt(req.getParameter("newsid"));
        News new1 = UserService.getNews(newsid);
        req.setAttribute("new1", new1);
        req.getRequestDispatcher("/WEB-INF/jsp/getnews.jsp").forward(req, resp);
    }
}
