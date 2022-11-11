package mate.controller.driversControllers;

import mate.lib.Injector;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/drivers/delete")
public class DriverDeleteController extends HttpServlet {
    Injector injector = Injector.getInstance("mate");
    DriverService driverService;

    public DriverDeleteController() {
        driverService = (DriverService)
                injector.getInstance(DriverService.class);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        driverService.delete(Long.valueOf(id));
        req.getRequestDispatcher("/WEB-INF/views/success.jsc")
                .forward(req, resp);
    }
}
