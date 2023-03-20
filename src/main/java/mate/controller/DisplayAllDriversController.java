package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDaoImpl;
import mate.model.Driver;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class DisplayAllDriversController extends HttpServlet {
    private DriverService driverService = new DriverServiceImpl(new DriverDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> allDriver = driverService.getAll();
        req.setAttribute("allDrivers", allDriver);
        req.getRequestDispatcher("/WEB-INF/views/displayAllDriver.jsp").forward(req, resp);
    }

}
