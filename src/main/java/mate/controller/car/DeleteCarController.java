package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/delete")
public class DeleteCarController extends HttpServlet {
    private static final String ALL_CARS_PATH = "/cars";
    private static final String CAR_ID_PARAMETER_NAME = "id";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        carService.delete(Long.parseLong(req.getParameter(CAR_ID_PARAMETER_NAME)));
        resp.sendRedirect(req.getContextPath() + ALL_CARS_PATH);
    }
}
