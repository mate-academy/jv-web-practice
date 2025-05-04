package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final String CAR_CREATE_FORM = "/WEB-INF/views/carCreateForm.jsp";
    private static final String ROOT_PACKAGE = "mate";
    private static final String MANUFACTURERS_ATTRIBUTE = "manufacturers";
    private static final String MANUFACTURER_ID_ATTRIBUTE = "manufacturer_id";
    private static final String CAR_MODEL_ATTRIBUTE = "model";
    private static final String ADD_CAR_REQUEST = "/cars/add";
    private CarService carService;
    private ManufacturerService manufacturerService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        carService = (CarService) injector
                .getInstance(CarService.class);
        manufacturerService = (ManufacturerService) injector
                .getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute(MANUFACTURERS_ATTRIBUTE, manufacturers);
        req.getRequestDispatcher(CAR_CREATE_FORM).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String carModel = req.getParameter(CAR_MODEL_ATTRIBUTE);
        long manufacturerId = Long.parseLong(req.getParameter(MANUFACTURER_ID_ATTRIBUTE));
        Car car = new Car();
        car.setModel(carModel);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        resp.sendRedirect(getServletContext().getContextPath() + ADD_CAR_REQUEST);
    }
}
