package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet("/drivers/add")
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = (String) req.getParameter("name");
        String licenseNumber = (String) req.getParameter("licenseNumber");
        if (name != null && licenseNumber != null
                && !name.equals("") && !licenseNumber.equals("")) {
            Driver driver = new Driver();
            driver.setName(name);
            driver.setLicenseNumber(licenseNumber);
            driverService.create(driver);
            resp.sendRedirect(req.getContextPath() + "/drivers");
        } else {
            req.setAttribute("errorMsg", "Invalid data!");
            req.getRequestDispatcher("/WEB-INF/views/manufacturers.jsp").forward(req, resp);
        }
    }
}
