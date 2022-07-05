package mate.controller;

import mate.dao.DriverDao;
import mate.dao.DriverDaoImpl;
import mate.lib.Injector;
import mate.model.Driver;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexController extends HttpServlet {
    private DriverDao driverDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("init was called");
        final Injector injector = Injector.getInstance("mate");
        System.out.println("injector was created");
        driverDao = (DriverDao) injector.getInstance(DriverDao.class);
        System.out.println("driverDao was created");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/interaction/register.jsp").forward(req, resp);
        System.out.println("doGet was invoked");
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.println("doPost was invoked");
        Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driver = driverDao.create(driver);
    }
}
