package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = {"/drivers/add"})
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req,resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter("driverName");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver(driverName,licenseNumber);
        driverService.create(driver);
        resp.sendRedirect("/index");
    }
}
