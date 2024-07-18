package com.controller;

import com.entity.Announcement;
import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/delannouncements")
public class DelannouncementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int announcementid = Integer.parseInt(req.getParameter("announcementid"));
        UserService.deleteAnnouncement(announcementid);
        resp.sendRedirect(req.getContextPath() + "/allannouncements");
    }
}
