package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/delete")
public class CarDeleteController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String ID_PARAM = "id";

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        CarService carService = (CarService) injector.getInstance(CarService.class);
        carService.delete(carService.get(Long.parseLong(req.getParameter(ID_PARAM))).getId());
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
