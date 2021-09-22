package mate.service;

import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    void register(String name, String licenseNumber);
}
