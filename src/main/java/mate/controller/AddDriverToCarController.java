package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("carId", request.getParameter("id"));
        request.setAttribute("drivers", driverService.getAll());
        request.getRequestDispatcher("/WEB-INF/views/addDriverToCarForm.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(request.getParameter("carId")));
        carService.addDriverToCar(driverService
                .get(Long.valueOf(request.getParameter("driverId"))), car);
        response.sendRedirect(request.getContextPath() + "/cars");
    }
}
