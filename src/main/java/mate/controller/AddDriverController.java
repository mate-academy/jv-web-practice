package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDaoImpl;
import mate.model.Driver;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class AddDriverController extends HttpServlet {
    private DriverService driverService = new DriverServiceImpl(new DriverDaoImpl());

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addDriverViews.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver();
        String driverName = req.getParameter("driverName");
        String licenseNumber = req.getParameter("licenseNumber");
        driver.setName(driverName);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
        req.getRequestDispatcher("/WEB-INF/views/serviceViews/driverRegistration.jsp")
                .forward(req, resp);
    }
}
