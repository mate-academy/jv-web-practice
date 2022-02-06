package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateDriverController extends HttpServlet {
    private static final String CREATE_DRIVER_FORM = "/WEB-INF/views/driverCreateForm.jsp";
    private static final String NAME_ATTRIBUTE = "name";
    private static final String LICENCE_NUMBER_ATTRIBUTE = "licence_number";
    private static final String ROOT_PACKAGE = "mate";
    private DriverService driverService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        driverService = (DriverService) injector
                .getInstance(DriverService.class);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(CREATE_DRIVER_FORM).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String driversName = req.getParameter(NAME_ATTRIBUTE);
        String driverLicenceNumber = req.getParameter(LICENCE_NUMBER_ATTRIBUTE);
        Driver driver = new Driver();
        driver.setName(driversName);
        driver.setLicenseNumber(driverLicenceNumber);
        driverService.create(driver);
        resp.sendRedirect(getServletContext().getContextPath()
                + "/drivers/add");
    }
}
