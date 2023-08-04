/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import model.Category;
import model.Job;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thinh
 */
public class CategoryDAO extends DBContext {

    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM [JobApplication].[dbo].[Category]";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public String getCateNameByID(int id) {
        String query = "SELECT CategoryName FROM [JobApplication].[dbo].[Category] WHERE CategoryID = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Category> CountJob() {
        List<Category> list = new ArrayList<>();
        String query = "WITH t AS (\n"
                + "    SELECT COUNT(JobID) AS TotalJob, CategoryID \n"
                + "    FROM [JobApplication].[dbo].[Job] \n"
                + "    GROUP BY CategoryID\n"
                + ")\n"
                + "SELECT c.CategoryID, c.CategoryName, c.LogoCategory, ISNULL(t.TotalJob, 0) AS TotalJob\n"
                + "FROM [JobApplication].[dbo].[Category] c\n"
                + "LEFT JOIN t ON c.CategoryID = t.CategoryID";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }

        return list;
    }

}
