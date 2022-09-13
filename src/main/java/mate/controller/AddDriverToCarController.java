package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        request.setAttribute("cars", cars);
        if (cars.size() != 0) {
            Long carIdMinValue = cars.get(0).getId();
            Long carIdMaxValue = cars.get(cars.size() - 1).getId();
            request.setAttribute("carIdMinValue", carIdMinValue);
            request.setAttribute("carIdMaxValue", carIdMaxValue);
        }
        List<Driver> drivers = driverService.getAll();
        request.setAttribute("drivers", drivers);
        if (drivers.size() != 0) {
            Long driverIdMinValue = drivers.get(0).getId();
            Long driverIdMaxValue = drivers.get(cars.size() - 1).getId();
            request.setAttribute("driverIdMinValue", driverIdMinValue);
            request.setAttribute("driverIdMaxValue", driverIdMaxValue);
        }
        request.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp")
                .forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long carId = Long.valueOf(request.getParameter("carId"));
        Car car = carService.get(carId);
        Long driverId = Long.valueOf(request.getParameter("driverId"));
        Driver driver = driverService.get(driverId);
        carService.addDriverToCar(driver, car);
        response.sendRedirect(request.getContextPath() + "/cars");
    }
}
