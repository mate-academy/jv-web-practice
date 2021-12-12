package mate.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

@WebServlet("/inject")
public class InjectDataController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final Random random = new Random();
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = List.of(
                new Driver("Aleksandr Moskovchuk", "BAH000-111"),
                new Driver("Anatolii Huryk", "BAH000-222"),
                new Driver("Andrew Dzundza", "BAH000-333"),
                new Driver("Andrey Sidorkin", "BAH000-444"),
                new Driver("Anton Volskyi", "BAH000-555"),
                new Driver("Artem Slobodianiuk", "BAH000-666"),
                new Driver("Dany Nesterov", "BAH000-777"),
                new Driver("Dima Barshay", "BAH000-888"),
                new Driver("Dzmitry Kozel", "BAH000-999"),
                new Driver("Dmytro Tyvoniuk", "BAH000-001"),
                new Driver("Eugene Kozlov", "BAH000-002"),
                new Driver("Illia Lavryniuk", "BAH000-003"),
                new Driver("Kate Deshchynska", "BAH000-004"),
                new Driver("Kateryna Nishchenko", "BAH000-005"),
                new Driver("Konstantin Nikiforov", "BAH000-006"),
                new Driver("Misha Samokhin", "BAH000-007"),
                new Driver("Mykhailo Tereshchenkov", "BAH000-008"),
                new Driver("Mykola Voronov", "BAH000-009"),
                new Driver("Natalia Vidzivashets", "BAH000-010"),
                new Driver("Roman Polulikh", "BAH000-011"),
                new Driver("Pavlo Martsiniv", "BAH000-999"));
        drivers.forEach(driverService::create);

        List<Manufacturer> manufacturers = List.of(
                new Manufacturer("ZAZ", "Ukraine"),
                new Manufacturer("Volkswagen", "Deutschland"),
                new Manufacturer("Opel", "Germany"),
                new Manufacturer("Ford", "USA"),
                new Manufacturer("Bugatti", "France"),
                new Manufacturer("KIA", "China"));
        manufacturers.forEach(manufacturerService::create);

        List<Car> cars = List.of(
                new Car("Zaporozhets", manufacturers.get(0)),
                new Car("Touran", manufacturers.get(1)),
                new Car("Astra", manufacturers.get(2)),
                new Car("Focus", manufacturers.get(3)),
                new Car("Chiron", manufacturers.get(4)),
                new Car("Sorento", manufacturers.get(5)));
        cars.forEach(carService::create);

        drivers.forEach(driver -> carService
                .addDriverToCar(driver, cars.get(random.nextInt(cars.size()))));
        resp.sendRedirect("/");
    }
}
