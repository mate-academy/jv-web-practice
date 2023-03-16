package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("AdCarController doPost invoked...");

        String carModel = request.getParameter("car_model");
        Long manufacturerId = Long.valueOf(request.getParameter("car_manufacturer_id"));

        carService.create(carService.getInstance(carModel,
                manufacturerService.get(manufacturerId)));

        System.out.println("AddCarController created new car");

        response.sendRedirect(request.getContextPath() + "/cars/all");
    }
}
