package mate.service;

import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver createInstance(String name, String licenseNumber);
}
