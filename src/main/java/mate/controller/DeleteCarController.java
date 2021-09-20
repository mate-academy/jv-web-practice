package mate.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/delete")
public class DeleteCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        carService = (CarService) injector.getInstance(CarService.class);
        Long carId = Long.parseLong(req.getParameter("id"));
        carService.delete(carId);
        resp.sendRedirect("/cars");
    }
}
