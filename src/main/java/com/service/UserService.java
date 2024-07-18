package com.service;

import com.entity.Announcement;
import com.entity.News;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserService {
    public static List<News> listNews() {
        List<News> news1  = new ArrayList<>();
        String sql = "select * from news";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()) {
                News new1 = new News();
                new1.setId(rs.getInt("id"));
                new1.setName(rs.getString("name"));
                String updateTime1 = rs.getString("update_time");
                 String[] updateTime2= updateTime1.split(" ");
                 String updateTime3 = updateTime2[0];
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDate date = LocalDate.parse(updateTime3, formatter);
                new1.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                new1.setUpdateTime(date);
                new1.setContent(rs.getString("content"));
                news1.add(new1);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Collections.reverse(news1);
        return news1;
    }
    public static List<News> listNewsSort() {
        List<News> news1  = new ArrayList<>();
        String sql = "select * from news";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()) {
                News new1 = new News();
                new1.setId(rs.getInt("id"));
                new1.setName(rs.getString("name"));
                String updateTime1 = rs.getString("update_time");
                String[] updateTime2= updateTime1.split(" ");
                String updateTime3 = updateTime2[0];
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDate date = LocalDate.parse(updateTime3, formatter);
                new1.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                new1.setUpdateTime(date);
                new1.setContent(rs.getString("content"));
                news1.add(new1);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return news1;
    }

    public static List<Announcement> listAnnouncements() {
        List<Announcement> announcements  = new ArrayList<>();
        String sql = "select * from announcement";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()) {
                Announcement announcement = new Announcement();
                announcement.setId(rs.getInt("id"));
                announcement.setName(rs.getString("name"));
                String updateTime1 = rs.getString("update_time");
                String[] updateTime2= updateTime1.split(" ");
                String updateTime3 = updateTime2[0];
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDate date = LocalDate.parse(updateTime3, formatter);
                announcement.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                announcement.setUpdateTime(date);
                announcement.setContent(rs.getString("content"));
                announcements.add(announcement);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Collections.reverse(announcements);
        return announcements;
    }
    public static List<Announcement> listAnnouncementsSort() {
        List<Announcement> announcements  = new ArrayList<>();
        String sql = "select * from announcement";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
            while(rs.next()) {
                Announcement announcement = new Announcement();
                announcement.setId(rs.getInt("id"));
                announcement.setName(rs.getString("name"));
                String updateTime1 = rs.getString("update_time");
                String[] updateTime2= updateTime1.split(" ");
                String updateTime3 = updateTime2[0];
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDate date = LocalDate.parse(updateTime3, formatter);
                announcement.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                announcement.setUpdateTime(date);
                announcement.setContent(rs.getString("content"));
                announcements.add(announcement);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return announcements;
    }
    public static News getNews(int id) {
        News new1 = null;
        String sql = "select * from news n where n.id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,  id);
            try(ResultSet rs = ps.executeQuery()) {
                while(rs.next()) {
                    new1 = new News();
                    new1.setId(rs.getInt("id"));
                    new1.setName(rs.getString("name"));
                    new1.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                    String updateTime1 = rs.getString("update_time");
                    String[] updateTime2= updateTime1.split(" ");
                    String updateTime3 = updateTime2[0];
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                    LocalDate date = LocalDate.parse(updateTime3, formatter);
                    new1.setUpdateTime(date);
                    new1.setContent(rs.getString("content"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return new1;
    }
    public static Announcement getAnnouncement(int id) {
        Announcement  announcement = null;
        String sql = "select * from announcement a where a.id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,  id);
            try(ResultSet rs = ps.executeQuery()) {
                while(rs.next()) {
                    announcement = new Announcement();
                    announcement.setId(rs.getInt("id"));
                    announcement.setName(rs.getString("name"));
                    announcement.setInsertTime(rs.getObject("insert_time", LocalDateTime.class));
                    String updateTime1 = rs.getString("update_time");
                    String[] updateTime2= updateTime1.split(" ");
                    String updateTime3 = updateTime2[0];
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                    LocalDate date = LocalDate.parse(updateTime3, formatter);
                    announcement.setUpdateTime(date);
                    announcement.setContent(rs.getString("content"));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return announcement;
    }
    public static void deleteNews(int id) {
        String sql = "delete from news where id = ?";
        try(Connection conn = DataSourceUtils.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void deleteAnnouncement(int id) {
        String sql = "delete from announcement where id = ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void addNews(String name, String content) {
        String sql = "insert into news(name,content) values(?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, content);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void addAnnouncement(String name, String content) {
        String sql = "insert into announcement(name,content) values(?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, content);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void updateNews(String name, String content, int id) {
        String sql = "update news n set n.name=?, n.content=? where n.id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, content);
            ps.setInt(3, id);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void updateAnnouncement(String name, String content, int id) {
        String sql = "update announcement a set a.name=?, a.content=? where a.id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, content);
            ps.setInt(3, id);
            ps.executeUpdate();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
