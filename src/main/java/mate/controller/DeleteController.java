package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class DeleteController extends HttpServlet {
    private static final String MANUFACTURER_CLASS = "manufacturer";
    private static final String CAR_CLASS = "car";
    private static final String DRIVER_CLASS = "driver";
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        String className = req.getParameter("class");

        switch (className) {

            case MANUFACTURER_CLASS:
                manufacturerService.delete(id);
                break;

            case CAR_CLASS:
                carService.delete(id);
                break;

            case DRIVER_CLASS:
                driverService.delete(id);
                break;

            default:
                break;

        }
        resp.sendRedirect("/success");
    }
}
