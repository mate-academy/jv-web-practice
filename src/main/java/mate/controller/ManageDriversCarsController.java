package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

public class ManageDriversCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("id");
        req.setAttribute("car", carService.get(Long.parseLong(carId)));
        req.setAttribute("drivers", driverService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/cars/manage.jsp?id=" + carId).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("id");
        carService.addDriverToCar(
                driverService.get(Long.parseLong(req.getParameter("driver_id"))),
                carService.get(Long.parseLong(carId))
        );
        resp.sendRedirect("/cars/manage?id=" + carId);
    }
}
