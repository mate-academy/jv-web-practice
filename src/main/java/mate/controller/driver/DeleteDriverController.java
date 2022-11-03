package mate.controller.driver;

import mate.lib.Injector;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteDriverController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Long id = Long.valueOf(req.getParameter("id"));
        driverService.delete(id);
        req.setAttribute("driver_id", id);
        req.getRequestDispatcher("/WEB-INF/views/drivers/driver_deleted_successfully.jsp")
                .forward(req,resp);
    }
}
