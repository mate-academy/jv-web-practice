package mate;

import java.util.List;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class App {
    private static final Injector injector = Injector.getInstance("mate");

    public static void main(String[] args) {
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        List<Driver> all = driverService.getAll();
        all.forEach(System.out::println);
    }
}
