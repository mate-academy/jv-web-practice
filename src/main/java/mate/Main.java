package mate;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class Main {
    private static Injector injector = Injector.getInstance("mate");

    public static void main(String[] args) {
        DriverService driverService = (DriverService)
                injector.getInstance(DriverService.class);
        CarService carService = (CarService)
                injector.getInstance(CarService.class);
        ManufacturerService manufacturerService = (ManufacturerService)
                injector.getInstance(ManufacturerService.class);
        manufacturerService.create(new Manufacturer("Toyota","Japan"));
        carService.create(new Car("Camry",manufacturerService.get(1L)));
        driverService.create(new Driver("Derek","GH4333"));
        driverService.create(new Driver("Alice","ER3211"));
        driverService.create(new Driver("Bob","PP0001"));
        carService.addDriverToCar(driverService.get(1L),carService.get(1L));
        carService.addDriverToCar(driverService.get(3L),carService.get(1L));
        driverService.getAllDriversByCar(2L).forEach(System.out::println);
        carService.getAll().forEach(System.out::println);
    }
}
