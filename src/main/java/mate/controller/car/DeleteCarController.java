package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

public class DeleteCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        CarService carService = (CarService) injector.getInstance(CarService.class);
        Long id = Long.valueOf(req.getParameter("id"));
        carService.delete(id);
        req.setAttribute("car_id", id);
        req.getRequestDispatcher("/WEB-INF/views/cars/deleted_successfully.jsp")
                .forward(req, resp);
    }
}
