package mate.controller;

import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
//    private static final Injector injector = Injector.getInstance("mate");
//    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    private final DriverService driverService = new DriverServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        String driverName = req.getParameter("driverName");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver();
        driver.setName(driverName);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
    }
}
