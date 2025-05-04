package mate.controller.car.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = ("/cars/drivers/remove"))
public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cars/removeDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
