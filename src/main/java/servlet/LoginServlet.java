package servlet;

import java.io.IOException;

import bean.Customer;
import dao.LoginDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns={"/login"})
public class LoginServlet extends HttpServlet {

    protected void doPost(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        try {
            LoginDAO dao = new LoginDAO();
            Customer customer = dao.search(login, password);

            if (customer != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", customer);

                response.sendRedirect("menu.jsp");
            } else {
                response.sendRedirect("login-error.jsp");
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}