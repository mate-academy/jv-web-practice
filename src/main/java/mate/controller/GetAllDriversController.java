package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class GetAllDriversController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private static DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        request.setAttribute("drivers", drivers);
        request.getRequestDispatcher("/WEB-INF/views/drivers/drivers.jsp").forward(request, response);
    }

}
