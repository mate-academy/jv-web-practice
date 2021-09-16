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

@WebServlet(urlPatterns = {"/drivers/add"})
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private boolean successRefresh = false;
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (!successRefresh) {
            req.getRequestDispatcher("/WEB-INF/views/driver/create.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/views/driver/create.jsp").include(req, resp);
            req.getRequestDispatcher("/WEB-INF/views/service/success.jsp").include(req, resp);
            successRefresh = false;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String name = req.getParameter("name");
        String licenceNumber = req.getParameter("licence_number");
        Driver driver = new Driver(name, licenceNumber);
        driverService.create(driver);
        successRefresh = true;
        resp.sendRedirect("/drivers/add");
    }
}
