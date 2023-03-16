package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.LoginService;

public class LoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final LoginService loginService
            = (LoginService) injector.getInstance(LoginService.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("LoginController doPost invoked...");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (!loginService.loginIsValid(username, password)) {
            response.sendRedirect("/index");
            System.out.println("LoginController login invalid");
            return;
        }

        System.out.println("LoginController log in");

        response.sendRedirect(request.getContextPath() + "/main");
    }

}
