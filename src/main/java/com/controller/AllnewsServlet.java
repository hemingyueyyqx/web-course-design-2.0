package com.controller;

import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/allnews")
public class AllnewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var news = UserService.listNewsSort();
        req.setAttribute("news", news);
        req.getRequestDispatcher("/WEB-INF/jsp/allnews.jsp").forward(req, resp);
    }
}
