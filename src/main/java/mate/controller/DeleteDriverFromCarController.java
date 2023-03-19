package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/drivers/delete")
public class DeleteDriverFromCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getParameter("carId") == null
                || req.getParameter("driverId") == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        Long carId = Long.parseLong(req.getParameter("carId"));
        Long driverId = Long.parseLong(req.getParameter("driverId"));
        CarService carService = (CarService) injector.getInstance(CarService.class);
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        carService.removeDriverFromCar(driverService.get(driverId), carService.get(carId));
        resp.sendRedirect(req.getContextPath() + "/cars/drivers?carId=" + carId);
    }
}
