package mate;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class Main {
    private static Injector injector = Injector.getInstance("mate");

    public static void main(String[] args) {
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

        Driver driver = new Driver();
        driver.setName("Bob");
        driver.setLicenseNumber("12312");

        driverService.create(driver);
    }
}
