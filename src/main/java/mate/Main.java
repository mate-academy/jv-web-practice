package mate;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class Main {
    private static final Injector injector = Injector.getInstance("mate.jdbc");
    private static final DriverService driverSerivce = (DriverService) injector.getInstance(DriverService.class);

    public static void main(String[] args) {
        Driver driver = new Driver();
        driver.setName("Alex");
        driver.setLicenseNumber("1243235235");
        driverSerivce.create(driver);
    }
}
