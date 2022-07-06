package mate.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDao;
import mate.lib.Injector;
import mate.model.Driver;

public class CreateDriverController extends HttpServlet {
    private DriverDao driverDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        final Injector injector = Injector.getInstance("mate");
        driverDao = (DriverDao) injector.getInstance(DriverDao.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/interaction/register.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driverDao.create(driver);
        req.getRequestDispatcher("/WEB-INF/views/interaction/register.jsp").forward(req, resp);
    }
}
