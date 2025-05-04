package mate.controller;

import mate.lib.Injector;
import mate.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/cars/delete"})
public class DeleteCarController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    public final CarService carService
            = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        carService.delete(id);
        response.sendRedirect("/cars");
    }
}
