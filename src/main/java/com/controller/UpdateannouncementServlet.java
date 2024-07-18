package com.controller;

import com.entity.Announcement;
import com.entity.News;
import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/updateannouncement")
public class UpdateannouncementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int announcementid = Integer.parseInt(req.getParameter("announcementid"));
        Announcement announcement = UserService.getAnnouncement(announcementid);
        req.setAttribute("announcement", announcement);
        req.getRequestDispatcher("/WEB-INF/jsp/updateannouncement.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("head").trim();
        String content = req.getParameter("content").trim();
        String id1 = req.getParameter("id").trim();
        int id = Integer.parseInt(id1);
        UserService.updateAnnouncement(name, content, id);
        resp.sendRedirect(req.getContextPath() + "/allannouncements");
    }
}
