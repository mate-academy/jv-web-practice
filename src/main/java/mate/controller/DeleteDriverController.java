package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private final DriverService driverService;

    {
        driverService = (DriverService) Injector.getInstance("mate")
                .getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        driverService.delete(id);
        req.getRequestDispatcher("/WEB-INF/views/done.jsp").forward(req, resp);
    }
}
