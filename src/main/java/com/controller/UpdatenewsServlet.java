package com.controller;

import com.entity.News;
import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/updatenews")
public class UpdatenewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int newsid = Integer.parseInt(req.getParameter("newsid"));
        News new1 = UserService.getNews(newsid);
        req.setAttribute("new1", new1);
        req.getRequestDispatcher("/WEB-INF/jsp/updatenews.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("head").trim();
        String content = req.getParameter("content").trim();
        String id1 = req.getParameter("id").trim();
        int id = Integer.parseInt(id1);
        UserService.updateNews(name, content, id);
        resp.sendRedirect(req.getContextPath() + "/allnews");
    }
}
