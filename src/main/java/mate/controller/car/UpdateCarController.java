package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Service;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/cars/update"})
@Service
public class UpdateCarController extends HttpServlet {
    private static final String CAR_ID = "car_id";
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
        String carId = req.getParameter(CAR_ID);

        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can't get empty car Id: "
                    + carId);
        }

        req.setAttribute("car", carService.get(Long.valueOf(carId)));
        req.setAttribute("manufacturers", manufacturerService.getAll());

        req.getRequestDispatcher("/WEB-INF/views/car/updateCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String carId = req.getParameter(CAR_ID);
        String carModel = req.getParameter(CAR_MODEL);

        if (carModel == null || carModel.length() < 1) {
            throw new RuntimeException("Can't update empty car model: "
                    + carModel);
        }
        if (carId == null) {
            throw new RuntimeException("Can't get empty car Id");
        }

        String carManufacturerId = req.getParameter(CAR_MFR_ID);

        Car car = carService.get(Long.valueOf(carId));
        car.setModel(carModel);
        car.setManufacturer(manufacturerService.get(Long.valueOf(carManufacturerId)));

        carService.update(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
