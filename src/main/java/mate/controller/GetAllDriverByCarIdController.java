package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/driversByCar")
public class GetAllDriverByCarIdController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private static CarService carService = (CarService) injector.getInstance(CarService.class);
    private static DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        List<Driver> allDriversByCar = driverService.getAllDriversByCar(id);
        req.setAttribute("drivers",allDriversByCar);
        req.getRequestDispatcher("/WEB-INF/views/drivers_no_delete.jsp").forward(req,resp);
    }
}
