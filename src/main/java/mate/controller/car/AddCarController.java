package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getCountriesForManufacturers(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerName = req.getParameter("manufacturer");
        Manufacturer manufacturer = manufacturerService.getAll()
                .stream()
                .filter(m -> m.getName().equals(manufacturerName))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Can't find manufacturer from name " + manufacturerName));
        Car car = new Car(model, manufacturer, new ArrayList<>());
        CarService carService = (CarService) injector.getInstance(CarService.class);
        carService.create(car);
    }

    private void getCountriesForManufacturers (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> countries = manufacturerService.getAll().stream()
                .map(Manufacturer::getCountry)
                .distinct()
                .collect(Collectors.toList());
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        Map<String, List<String>> countryName = getCountryNameHashMap(allManufacturers, countries);
        req.setAttribute("countryNameList", countryName);
        req.getRequestDispatcher("/WEB-INF/views/cars/addCar.jsp").forward(req, resp);
    }

    private Map<String, List<String>> getCountryNameHashMap(List<Manufacturer> manufacturers, List<String> countries) {
        Map<String, List<String>> hashMap = new HashMap<>();
        for (String country : countries) {
            List<String> namesFromCountry = getNamesFromCountry(country);
            hashMap.put(country, namesFromCountry);
        }
        return hashMap;
    }
    private List<String> getNamesFromCountry(String country) {
        List<Manufacturer> all = manufacturerService.getAll();
        return all.stream()
                .filter(m -> m.getCountry().equals(country))
                .map(Manufacturer::getName)
                .distinct()
                .collect(Collectors.toList());
    }


}
