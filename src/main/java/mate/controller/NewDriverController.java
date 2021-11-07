package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Driver;
import mate.service.DriverService;

public class NewDriverController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/new.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        String driverName = req.getParameter("driverName");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver(driverName, licenseNumber);
        driverService.create(driver);
        resp.sendRedirect("/drivers/all");
    }
}
