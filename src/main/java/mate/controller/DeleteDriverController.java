package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        driverService.delete(id);
        resp.sendRedirect("/drivers/all");
    }
}
