package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDao;
import mate.lib.Injector;
import mate.model.Driver;

public class GetAllDriversController extends HttpServlet {
    private DriverDao driverDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverDao.getAll();
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/interaction/allDrivers.jsp").forward(req, resp);
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        final Injector injector = Injector.getInstance("mate");
        driverDao = (DriverDao) injector.getInstance(DriverDao.class);
    }
}
