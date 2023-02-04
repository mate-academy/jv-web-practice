package mate.controller;

import mate.model.Driver;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateDriverController extends HttpServlet {
    private final DriverService driverService = new DriverServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String driverName = req.getParameter("driverName");
        String driverLicenseId = req.getParameter("driverLicenseId");
        Driver driver = new Driver(driverName, driverLicenseId);
        driverService.create(driver);
    }
}
