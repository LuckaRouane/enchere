/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Categorie;

/**
 *
 * @author Lucka Rouane
 */
@WebServlet(name = "CategorieUpdate", urlPatterns = {"/CategorieUpdate"})
public class CategorieUpdate extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        try{
            String idc=request.getParameter("idc");
            String nom=request.getParameter("nom");
            Categorie categ=new Categorie(Integer.parseInt(idc), nom);
            request.setAttribute("categorie", categ);
            
            RequestDispatcher d=request.getRequestDispatcher("updatecategorie.jsp");
            d.forward(request, response);
        }catch(Exception e){
            e.printStackTrace();
            out.print(e);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        try{
            String idc=request.getParameter("idc");
            String nom=request.getParameter("nom");
            Categorie categ=new Categorie(Integer.parseInt(idc), nom);
            categ.save();
            
            response.sendRedirect("CategorieList");
        }catch(Exception e){
            e.printStackTrace();
            out.print(e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
