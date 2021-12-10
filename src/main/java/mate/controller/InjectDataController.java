package mate.controller;

import java.io.IOException;
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

@WebServlet(urlPatterns = "/fillTables")
public class InjectDataController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        super.doGet(req, resp);
        ManufacturerService manufacturerService
                = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        Manufacturer mtz = manufacturerService.create(new Manufacturer("BelAZ", "Belarus"));
        Manufacturer audi = manufacturerService.create(new Manufacturer("Audi", "Italy"));
        Manufacturer generalMotors = manufacturerService.create(new Manufacturer("GMT", "USA"));

        CarService carService
                = (CarService) injector.getInstance(CarService.class);
        Car belarusianCar = carService.create(new Car("Belaz", mtz));
        Car italianCar = carService.create(new Car("A8", audi));
        Car americanCar = carService.create(new Car("Cadillac", generalMotors));
        System.out.println("Got belarusianCar = " + carService.get(belarusianCar.getId()));
        System.out.println("Got italianCar = " + carService.get(italianCar.getId()));
        System.out.println("Got americanCar = " + carService.get(americanCar.getId()));
        belarusianCar.setModel("Tractor");
        italianCar.setModel("A7");
        Manufacturer dodgeMotors = manufacturerService.create(new Manufacturer("Dodge", "USA"));
        americanCar.setManufacturer(dodgeMotors);
        System.out.println("Updated belarusianCar = " + carService.update(belarusianCar));
        System.out.println("Updated italianCar = " + carService.update(italianCar));
        System.out.println("Updated americanCar = " + carService.update(americanCar));

        DriverService driverService
                = (DriverService) injector.getInstance(DriverService.class);
        Driver firsDriver = driverService.create(new Driver("Petya", "LYC1"));
        Driver secondDriver = driverService.create(new Driver("Vasya", "LYC2"));
        Driver thirdDriver = driverService.create(new Driver("Misha", "LYC3"));

        carService.addDriverToCar(thirdDriver, belarusianCar);
        System.out.println("BelarusianCarWithNewDriver = " + carService.get(belarusianCar.getId()));
        carService.removeDriverFromCar(firsDriver, belarusianCar);
        System.out.println("BelarusianCarWithoutDriver = " + carService.get(belarusianCar.getId()));
        System.out.println("All cars before deletion:");
        carService.getAll().forEach(System.out::println);
        System.out.println("Deleted = " + carService.delete(belarusianCar.getId()));
        System.out.println("All cars after deletion:");
        carService.getAll().forEach(System.out::println);
        System.out.println("All cars by driver:");

        Driver fourthDriver = driverService.create(new Driver("Masha", "LYC4"));
        carService.getAllByDriver(fourthDriver.getId()).forEach(System.out::println);
    }
}
