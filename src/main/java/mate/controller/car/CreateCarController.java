package mate.controller.car;

import java.io.IOException;
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

@WebServlet(urlPatterns = "/cars/add")
public class CreateCarController extends HttpServlet {
    private static final String ALL_CARS_PATH = "/cars";
    private static final String CREATE_CAR_VIEW_PATH
            = "/WEB-INF/views/car/createCar.jsp";
    private static final String MANUFACTURERS_ATTRIBUTE_NAME = "manufacturers";
    private static final String MODEL_PARAMETER_NAME = "model";
    private static final String MANUFACTURER_ID_PARAMETER_NAME = "manufacturer_id";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute(MANUFACTURERS_ATTRIBUTE_NAME, manufacturerService.getAll());
        req.getRequestDispatcher(CREATE_CAR_VIEW_PATH)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = manufacturerService
                .get(Long.parseLong(req.getParameter(MANUFACTURER_ID_PARAMETER_NAME)));
        carService.create(new Car(req.getParameter(MODEL_PARAMETER_NAME), manufacturer));
        resp.sendRedirect(ALL_CARS_PATH);
    }
}
