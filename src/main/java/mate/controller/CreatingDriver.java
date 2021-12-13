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
public class CreatingDriver extends HttpServlet {
    private final static Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/createDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver(name, licenseNumber);
        driverService.create(driver);
        resp.sendRedirect("");
    }
}
