package mate.controller.drivers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/drivers/add")
public class NewDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(req.getContextPath() + ("/WEB-INF/views/drivers/add.jsp"))
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        driverService.create(new Driver(name, licenseNumber));
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
