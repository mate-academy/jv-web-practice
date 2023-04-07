package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Driver;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

@WebServlet("/drivers/add")
public class AddDriversController extends HttpServlet {
    //    public static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService; //todo fix injector

    @Override
    public void init() throws ServletException {
        driverService = new DriverServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/driversAdd.jsp").forward(req, resp);
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        final Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/");
    }
}
