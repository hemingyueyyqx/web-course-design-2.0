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

@WebServlet("/jdbc/getannouncement")
public class GetAnnouncementsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int announcementid = Integer.parseInt(req.getParameter("announcementid"));
        Announcement announcement = UserService.getAnnouncement(announcementid);
        req.setAttribute("announcement", announcement);
        req.getRequestDispatcher("/WEB-INF/jsp/getannouncement.jsp").forward(req, resp);
    }
}
