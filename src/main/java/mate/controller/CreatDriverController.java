package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/add")
public class CreatDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/postDriver.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driverService.create(driver);
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }
}
