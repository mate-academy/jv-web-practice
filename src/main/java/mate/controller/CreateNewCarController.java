package mate.controller;

import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns ="/cars/registration")
public class CreateNewCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").include(req,resp);
        req.getRequestDispatcher("/WEB-INF/views/registrationCar.jsp").include(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        String model = parameterMap.get("model")[0];
        Long manufacturerId = Long.valueOf(parameterMap.get("manufacturerId")[0]);
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        Car car = new Car(model,manufacturer);
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").include(req,resp);
        req.getRequestDispatcher("/WEB-INF/views/registrationCar.jsp").include(req,resp);
        req.getRequestDispatcher("/WEB-INF/views/operationSuccessful.jsp").include(req,resp);
    }
}
