package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class DriverCreateController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String DRIVER_NAME_PARAMETER = "driverName";
    private static final String DRIVER_LICENSE_NUMBER_PARAMETER = "licenseNumber";
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/driverCreate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driverToCreate = new Driver();
        String name =
                req.getParameter(DRIVER_NAME_PARAMETER);
        String licenseNumber =
                req.getParameter(DRIVER_LICENSE_NUMBER_PARAMETER);
        driverToCreate.setName(
                name.length() > 0 ? name : "-----");
        driverToCreate.setLicenseNumber(
                licenseNumber.length() > 0 ? licenseNumber : "-----");
        driverService.create(driverToCreate);
        resp.sendRedirect(req.getContextPath() + "/drivers/driverList");
    }
}
