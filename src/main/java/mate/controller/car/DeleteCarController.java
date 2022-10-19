package mate.controller.car;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/delete")
public class DeleteCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("id"));
        carService.delete(carId);
        resp.sendRedirect("request.getContextPath()" + "/cars/all");
    }
}
