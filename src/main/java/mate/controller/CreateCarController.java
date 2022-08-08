package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.exception.DataProcessingException;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final String INJECTOR_INSTANCE = "mate";
    private static final Injector injector = Injector.getInstance(INJECTOR_INSTANCE);
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/newcar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getParameter("model").isEmpty()
                || req.getParameter("manufacturerName").isEmpty()) {
            throw new DataProcessingException("Input parameters couldn't be empty!",
                    new Throwable());
        }
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        List<Manufacturer> manufacturerList = manufacturerService.getAll();
        for (Manufacturer manufacturer : manufacturerList) {
            if (manufacturer.getName().equals(req.getParameter("manufacturerName"))) {
                car.setManufacturer(manufacturer);
            }
        }
        carService.create(car);
    }
}
