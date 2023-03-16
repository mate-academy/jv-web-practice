package mate.service;

import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    public Driver getInstance(String name, String licenseNumber);
}
