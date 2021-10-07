package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/drivers/all"})
public class DisplayDriversController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    public final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        request.setAttribute("drivers", drivers);
        request.getRequestDispatcher("/WEB-INF/views/drivers/all.jsp").forward(request, response);
    }
}
