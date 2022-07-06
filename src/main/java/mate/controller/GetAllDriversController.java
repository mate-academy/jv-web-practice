package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDao;
import mate.lib.Injector;
import mate.model.Driver;

public class GetAllDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private DriverDao driverDao;

    @Override
    public void init() {
        driverDao = (DriverDao) injector.getInstance(DriverDao.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverDao.getAll();
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/drivers.jsp").forward(req, resp);
    }
}
