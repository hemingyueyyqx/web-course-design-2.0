package com.controller;

import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/allannouncements")
public class AllannouncementsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var announcements = UserService.listAnnouncementsSort();
        req.setAttribute("announcements", announcements);
        req.getRequestDispatcher("/WEB-INF/jsp/allannouncements.jsp").forward(req, resp);
    }
}
