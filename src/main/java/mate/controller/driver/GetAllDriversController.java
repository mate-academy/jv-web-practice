package mate.controller.driver;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetAllDriversController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("drivers",drivers);
        req.getRequestDispatcher("/WEB-INF/views/drivers/all.jsp").forward(req,resp);
    }
}
