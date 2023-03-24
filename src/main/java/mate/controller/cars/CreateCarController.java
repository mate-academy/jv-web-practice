package mate.controller.cars;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/cars/create"})
public class CreateCarController extends HttpServlet {
    private static final String CAR_MODEL = "car_model";
    private static final String CAR_MFR_ID = "car_manufacturer_id";
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/cars/createCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carModel = req.getParameter(CAR_MODEL);
        String carManufacturerId = req.getParameter(CAR_MFR_ID);

        if (carModel == null || carModel.length() < 1) {
            throw new RuntimeException("Car model can't be empty: "
                    + carModel);
        }
        if (carManufacturerId == null) {
            throw new RuntimeException("Can't create car with empty manufacturer");
        }

        Car car = new Car();
        car.setModel(carModel);
        car.setManufacturer(manufacturerService.get(Long.valueOf(carManufacturerId)));
        car.setDrivers(List.of());

        carService.create(car);
        resp.sendRedirect("/cars");
    }
}
