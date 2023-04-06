package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(name = "SearchDriver", urlPatterns = {"/cars/drivers/search"})

public class SearchDriverByCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.parseLong(req.getParameter("car_id"));
        System.out.println(req.getParameter("driver_id"));
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("drivers", drivers);
        req.setAttribute("car_id", carId);
        req.getRequestDispatcher("/WEB-INF/views/cars/displayAllDriversToChoose.jsp").forward(req, resp);
    }
}
