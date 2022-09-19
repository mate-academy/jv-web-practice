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

@WebServlet(urlPatterns = "/drivers/*")
public class GetDriverByIdController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getPathInfo().split("/")[1];
        Driver driver = driverService.get(Long.valueOf(id));
        String name = driver.getName();
        String licenseNumber = driver.getLicenseNumber();
        req.setAttribute("id", id);
        req.setAttribute("name", name);
        req.setAttribute("licenseNumber", licenseNumber);
        req.getRequestDispatcher("/WEB-INF/views/driver/edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getPathInfo().split("/")[1];

        Driver updatedDriver = new Driver();
        updatedDriver.setId(Long.valueOf(id));
        String name = req.getParameter("name");
        updatedDriver.setName(name);
        String licenseNumber = req.getParameter("licenseNumber");
        updatedDriver.setLicenseNumber(licenseNumber);

        Driver driver = driverService.update(updatedDriver);
        req.setAttribute("id", id);
        req.setAttribute("name", driver.getName());
        req.setAttribute("licenseNumber", driver.getLicenseNumber());
        req.setAttribute("title", "Driver ("
                + name + "/" + licenseNumber
                + ") has been successfully updated");
        req.getRequestDispatcher("/WEB-INF/views/driver/edit.jsp").forward(req, resp);
    }
}
