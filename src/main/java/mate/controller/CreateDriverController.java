package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/driver/create")
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("driver_name");
        String licenseNumber = req.getParameter("license_number");
        driverService.create(new Driver(name, licenseNumber));
        resp.sendRedirect("/driver/create");
    }
}
