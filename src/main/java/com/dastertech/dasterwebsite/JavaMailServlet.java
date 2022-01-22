package com.dastertech.dasterwebsite;

import javax.mail.MessagingException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet( urlPatterns = "/ContactUs")
public class JavaMailServlet extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws MessagingException {
       String message = null;
       String status = null;
       if (request.getParameter("submit") != null) {
           JavaEmail javaEmail = new JavaEmail();
           javaEmail.setMailServerProperties();
           String emailSubject = "Contact Form using Java JSP GMail";
           String emailBody = "";
           if (request.getParameter("name") != null) {
               emailBody = "Sender Name: " + request.getParameter("name")
                       + "<br>";
           }
           if (request.getParameter("email") != null) {
               emailBody = emailBody + "Sender Email: "
                       + request.getParameter("email") + "<br>";
           }
           if (request.getParameter("phone") != null) {
               emailBody = emailBody + "Sender Phone: "
                       + request.getParameter("phone") + "<br>";
           }
           if (request.getParameter("message") != null) {
               emailBody = emailBody + "Message: " + request.getParameter("message")
                       + "<br>";
           }
           javaEmail.createEmailMessage(emailSubject, emailBody);
           try {
               javaEmail.sendEmail();
               status = "success";
               message = "Email sent Successfully!";

           } catch (MessagingException me) {
               status = "error";
               message = "Error in Sending Email!";
           }
       }
   }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/mailcontact.jsp").forward(
                request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request,response);
            request.getRequestDispatcher("/index.jsp").forward(
                    request, response);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
