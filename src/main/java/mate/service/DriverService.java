package mate.service;

import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver register(String driverName, String licenseNumber);
}
