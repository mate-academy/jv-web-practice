package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class CarCreateController extends HttpServlet {
    private static final String CAR_MODEL_PARAMETER = "carModel";
    private static final String CAR_MANUFACTURER_ID_PARAMETER = "carManufacturerId";
    private static final String CAR_INITIAL_DRIVER_ID_PARAMETER = "carInitialDriverId";
    private final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/carCreate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        String model =
                req.getParameter(CAR_MODEL_PARAMETER);
        String manufacturerId =
                req.getParameter(CAR_MANUFACTURER_ID_PARAMETER);
        String driverId =
                req.getParameter(CAR_INITIAL_DRIVER_ID_PARAMETER);
        car.setModel(model.length() > 0 ? model : "-----");
        car.setManufacturer(
                manufacturerService.get(
                        Long.parseLong(
                                manufacturerId.length() > 0 ? manufacturerId : "-----")));
        car.setDrivers(
                List.of(driverService.get(
                        Long.parseLong(
                                driverId.length() > 0 ? driverId : "-----"))));
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars/carList");
    }
}
