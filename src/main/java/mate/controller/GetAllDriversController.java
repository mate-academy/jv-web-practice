package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDao;
import mate.dao.impl.DriverDaoImpl;
import mate.model.Driver;

public class GetAllDriversController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DriverDao driverDao = new DriverDaoImpl();
        List<Driver> drivers = driverDao.getAll();
        request.setAttribute("drivers", drivers);
        request.getRequestDispatcher("/WEB-INF/views/driver/all.jsp").forward(request, response);
    }
}
