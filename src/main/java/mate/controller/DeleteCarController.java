package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.CarService;

@WebServlet(name = "deleteCar", urlPatterns = "/cars/delete")
public class DeleteCarController extends GenericController {
    private final CarService carService =
            (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        carService.delete(id);
        resp.sendRedirect("/cars");
    }
}
