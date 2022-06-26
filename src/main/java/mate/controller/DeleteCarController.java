package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

public class DeleteCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        carService.delete(id);
    }
}
