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
public class AddDriverController extends HttpServlet {
    private static final String PAGE_PATH = "/WEB-INF/views/drivers/add.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(PAGE_PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver(name,licenseNumber);
        driverService.create(driver);
    }

    @Override
    public void init() throws ServletException {
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }
}
