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
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add-driver")
public class CarConnectDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String DRIVER_ID = "driverId";
    private static final String CAR_ID = "carId";
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/carConnectDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id =
                req.getParameter(DRIVER_ID);
        carService.addDriverToCar(driverService.get(Long.parseLong(id)),
                carService.get(Long.parseLong(req.getParameter(CAR_ID))));
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
