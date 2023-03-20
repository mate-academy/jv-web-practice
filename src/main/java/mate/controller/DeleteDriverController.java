package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.DriverDaoImpl;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class DeleteDriverController extends HttpServlet {
    private DriverService driverService = new DriverServiceImpl(new DriverDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        driverService.delete(Long.parseLong(id));
        req.getRequestDispatcher("/WEB-INF/views/serviceViews/driverRegistration.jsp")
                .forward(req, resp);
    }
}
