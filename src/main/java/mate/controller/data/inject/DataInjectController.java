package mate.controller.data.inject;

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

@WebServlet(urlPatterns = "/data/inject")
public class DataInjectController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) {
        Manufacturer bmw = new Manufacturer("BMW", "Germany");
        Manufacturer lexus = new Manufacturer("Lexus", "Japan");

        manufacturerService.create(bmw);
        manufacturerService.create(lexus);

        Driver bob = new Driver("Bob", "A123456789");
        Driver alice = new Driver("Alice", "B123456789");

        driverService.create(bob);
        driverService.create(alice);

        Car bmwX3 = new Car("X3", bmw);
        Car bmwX5 = new Car("X5", bmw);
        Car lexusLx570 = new Car("LX 570", lexus);
        Car lexusRx350 = new Car("RX 350", lexus);

        carService.create(bmwX3);
        carService.create(bmwX5);
        carService.create(lexusLx570);
        carService.create(lexusRx350);
    }
}
