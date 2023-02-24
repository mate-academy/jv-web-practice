package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = {"/cars/edit"})
@Service
public class EditCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService)
            injector.getInstance(CarService.class);
    private static final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);
    private static final String CAR_ID = "car_id";
    private static final String CAR_MODEL = "car_model";
    private static final String CAR_MANUFACTURER_ID = "car_manufacturer_id";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("carId");
        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can not edit Car with empty carId");
        }

        req.setAttribute("car", carService.get(Long.valueOf(carId)));
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/cars/editCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String carModel = req.getParameter(CAR_MODEL);

        String carId = req.getParameter(CAR_ID);

        if (carModel == null || carModel.length() < 1) {
            throw new RuntimeException("Field model can not be empty. carModel = "
                    + carModel);
        }

        if (carId == null) {
            throw new RuntimeException("Field driverId can not be empty.");
        }

        String carManufacturerId = req.getParameter(CAR_MANUFACTURER_ID);

        Car car = carService.get(Long.valueOf(carId));
        car.setModel(carModel);
        car.setManufacturer(manufacturerService.get(Long.valueOf(carManufacturerId)));

        carService.update(car);
        resp.sendRedirect("/cars");
    }
}
